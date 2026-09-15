# Marketo Production Setup Guide

> **Ticket:** REQ-0001-7  
> **System Area:** Marketing  
> **Build Phase:** 1  
> **Status Reference:** Based on [Marketo Docs — Setup Steps](https://docs.marketo.com/display/public/DOCS/Setup+Steps)

---

## Table of Contents

1. [Prerequisites & Pre-Flight Checks](#1-prerequisites--pre-flight-checks)
2. [CNAME for Landing Pages](#2-cname-for-landing-pages)
3. [CNAME for Branded Email Tracking Links](#3-cname-for-branded-email-tracking-links)
4. [SPF/DKIM Setup and Validation](#4-spfdkim-setup-and-validation)
5. [Whitelist Marketo Email Servers](#5-whitelist-marketo-email-servers)
6. [Request Landing Page & Email Starter Templates](#6-request-landing-page--email-starter-templates)
7. [Deploy Marketo Munchkin Code on All Web Pages](#7-deploy-marketo-munchkin-code-on-all-web-pages)
8. [Post-Setup Validation Checklist](#8-post-setup-validation-checklist)

---

## 1. Prerequisites & Pre-Flight Checks

### Required Access & Accounts
| Item | Owner | Notes |
|------|-------|-------|
| Marketo Admin credentials | Marketing Ops | Full Admin role required |
| DNS provider access | IT / DevOps | To create CNAME, TXT, SPF records |
| Web server / CMS admin rights | Web Team | For Munchkin JS snippet deployment |
| Email security / SPF approval | Infosec | SPF record may require change management |

### Information to Gather Before Starting
- Marketo subscription **Munchkin Account ID** (found under **Admin → Munchkin**)
- Assigned Marketo **Landing Page CNAME** (e.g., `pages.yourdomain.com`)
- Assigned Marketo **Email Tracking CNAME** (e.g., `email.yourdomain.com` or `link.yourdomain.com`)
- Primary sending domain(s) (e.g., `yourdomain.com`)
- List of all web properties where Munchkin will be deployed

### DNS Record Management
> **⚠️ Warning:** DNS changes can take 24–72 hours to propagate globally.  
> Plan each step with propagation windows in mind. Validate before moving to the next step.

---

## 2. CNAME for Landing Pages

### Purpose
Create a branded domain for Marketo-hosted landing pages so URLs display your company name (e.g., `pages.yourdomain.com/offer`) instead of the generic Marketo domain.

### Step-by-Step

| Step | Action | Details |
|------|--------|---------|
| 2.1 | Log into your DNS provider | e.g., Cloudflare, AWS Route53, GoDaddy, DNSMadeEasy |
| 2.2 | Create a **CNAME record** | **Host/Name:** `pages` (or the subdomain assigned by Marketo)  
 **Target:** `<munchkinID>.mktoweb.com`  
 **TTL:** 300–600 seconds (for easy rollback) |
| 2.3 | Configure Marketo Admin | Go to **Admin → Landing Pages**  
 Set **Landing Page Domain:** `pages.yourdomain.com`  
 Enter the **CNAME value** from step 2.2 |
| 2.4 | Wait for DNS propagation | Use `dig pages.yourdomain.com CNAME` to verify |

### Verification
```bash
dig pages.yourdomain.com CNAME +short
# Expected: <munchkinID>.mktoweb.com.
```

### Key Notes
- Only **one** CNAME landing page domain can be active per Marketo subscription.
- The CNAME **must** point to `<munchkinID>.mktoweb.com` — do not point to your web server.
- Existing Marketo landing pages using the default domain will **not** be affected — new pages published after the change will use the branded domain.

---

## 3. CNAME for Branded Email Tracking Links

### Purpose
Replace generic Marketo tracking links in emails (e.g., `https://<munchkinID>.mkto-tracking.com/...`) with your branded domain (e.g., `https://email.yourdomain.com/...`). This improves deliverability and brand trust.

### Step-by-Step

| Step | Action | Details |
|------|--------|---------|
| 3.1 | Log into your DNS provider | Same as above |
| 3.2 | Create a **CNAME record** | **Host/Name:** `email` (or the tracking subdomain)  
 **Target:** `<munchkinID>.mktotracking.com`  
 **TTL:** 300–600 seconds |
| 3.3 | Configure Marketo Admin | Go to **Admin → Email Tracking**  
 Set **Tracking Link Domain:** `email.yourdomain.com`  
 Click **Replace Domain** — this rewrites all existing email tracking links to use the new branded domain |
| 3.4 | Wait for DNS propagation | Use `dig email.yourdomain.com CNAME` |

### Verification
```bash
dig email.yourdomain.com CNAME +short
# Expected: <munchkinID>.mktotracking.com.
```

### Key Note — Critical Impact
> **Warning:** Replacing the tracking link domain **rewrites all links** in every previously approved email.  
> - Any email that is currently **approved** will be **unapproved** and must be re-approved.  
> - Schedule this change during a low-email-send window.  
> - Confirm with the email operations team before proceeding.

---

## 4. SPF/DKIM Setup and Validation

### Why This Matters
- **SPF (Sender Policy Framework):** Authorizes Marketo mail servers to send email on behalf of your domain. Prevents spoofing and improves inbox placement.
- **DKIM (DomainKeys Identified Mail):** Digitally signs outgoing emails so receiving servers can verify the email truly came from your domain.

### 4.1 SPF Record

| Step | Action | Details |
|------|--------|---------|
| 4.1.1 | Review your current SPF record | `dig yourdomain.com TXT +short` — look for `v=spf1` |
| 4.1.2 | Append Marketo IP ranges | Add to your SPF record:  
 `include:mktomail.com`  
 Full example:  
 `v=spf1 include:_spf.google.com include:mktomail.com ~all` |
| 4.1.3 | Validate | Use [kitterman.com/spf/validate.html](https://www.kitterman.com/spf/validate.html) |

### 4.2 DKIM Setup

| Step | Action | Details |
|------|--------|---------|
| 4.2.1 | Marketo generates DKIM key | **Admin → Email → DKIM** — click **Generate** |
| 4.2.2 | Create a TXT record in DNS | **Host/Name:** `marketo._domainkey.yourdomain.com`  
 **Value:** The DKIM public key string provided by Marketo  
 **TTL:** 300–600 seconds |
| 4.2.3 | Publish the record | After DNS propagation, return to Marketo Admin and click **Validate** |
| 4.2.4 | Enable DKIM signing | Check the **Sign with DKIM** box in **Admin → Email → DKIM** |

### 4.3 Validation Commands
```bash
# SPF
dig yourdomain.com TXT +short | grep "spf"

# DKIM
dig marketo._domainkey.yourdomain.com TXT +short

# Full SPF check (online)
curl -s "https://www.kitterman.com/spf/validate.html?domain=yourdomain.com"
```

### Common Pitfalls
- Multiple SPF records are **not allowed** — you can have only **one** SPF record per domain. Merge multiples.
- SPF lookups are capped at **10 DNS lookups** — `include:mktomail.com` counts as one. Check current count.
- DKIM DNS TXT records must have **no extra spaces or line breaks** in the value.
- ⏱ DNS propagation: up to **72 hours** for SPF; usually **1–2 hours** for DKIM.

---

## 5. Whitelist Marketo Email Servers

### Purpose
Ensure your corporate email security gateways allow inbound messages from Marketo's email servers so internal test emails and bounces are not quarantined.

### Marketo IP Ranges to Whitelist

| Range / Host | Protocol | Purpose |
|-------------|----------|---------|
| `198.2.128.0/18` (198.2.128.0–198.2.191.255) | SMTP | Outbound marketing emails |
| `199.15.224.0/20` | SMTP | Legacy email sending IPs |
| `mktomail.com` domain | SPF include | All Marketo-sending IPs (automatic) |

> **Note:** Consult your Marketo Success Team for the most current IP ranges at setup time. Ranges may be updated.

### Recommendations by Email Security Platform

| Platform | Configuration |
|----------|--------------|
| Proofpoint | Add to **Sender Group / Approved List** |
| Mimecast | Add to **Permitted Senders / Bypass Policy** |
| Exchange Online / EOP | Add to **Connection Filter → IP Allow List** |
| Barracuda | Add to **Trusted Senders** |
| Cisco IronPort | Add to **HAT → Whitelist Senders** |

### Additional Whitelist Entries
- **Return-Path / Envelope From:** `bounce.<munchkinID>.list.marketo.net`
- **Reply-To / From domain:** your sending domain (ensures SPF/DKIM passes)

---

## 6. Request Landing Page & Email Starter Templates

### What to Request
Marketo Creative Services provides pre-built, responsive **Starter Templates** for:
- **Email Templates** (basic, event, newsletter, etc.)
- **Landing Page Templates** (standard, webinar registration, form, etc.)

### Request Process

| Step | Action | Owner |
|------|--------|-------|
| 6.1 | Open a case | **Marketo Support** → New Case → Category: **Creative Services** |
| 6.2 | Provide details | Subscription Munchkin ID, primary brand colors, logo, fonts, any existing brand guidelines |
| 6.3 | Confirm timeline | Typically **5–10 business days** for delivery |
| 6.4 | Receive templates | Creative Services delivers as Marketo **Email Templates** and **Landing Page Templates** in your instance |
| 6.5 | Review & approve | Marketing Ops reviews the templates and approves via the case |

### Internal Preparation
Before requesting templates, prepare:
- ✔ Brand colour palette (primary, secondary, CTAs)
- ✔ Logo files (PNG, SVG — dark and light versions)
- ✔ Google Font or Typekit font selections
- ✔ Company address (required in email footer for CAN-SPAM compliance)
- ✔ Social media URLs (Facebook, Twitter/X, LinkedIn, YouTube)

---

## 7. Deploy Marketo Munchkin Code on All Web Pages

### Purpose
Install the Marketo Munchkin JavaScript tracking snippet on every page of your website(s) to track web visitor activity, form fills, and page views.

### The Munchkin Snippet

```html
<script type="text/javascript">
(function() {
  var didInit = false;
  function initMunchkin() {
    if(didInit === false) {
      didInit = true;
      Munchkin.init('<MUNCHKIN_ID>');
    }
  }
  var s = document.createElement('script');
  s.type = 'text/javascript';
  s.async = true;
  s.src = '//munchkin.marketo.net/munchkin.js';
  s.onreadystatechange = function() {
    if (this.readyState == 'complete' || this.readyState == 'loaded') {
      initMunchkin();
    }
  };
  s.onload = initMunchkin;
  document.getElementsByTagName('head')[0].appendChild(s);
})();
</script>
```

> Replace `<MUNCHKIN_ID>` with your Marketo subscription Munchkin Account ID (found under **Admin → Munchkin**).

### Deployment Options

| Deployment Method | Details | Best For |
|-------------------|---------|----------|
| **Google Tag Manager (GTM)** | Add as a Custom HTML Tag. Trigger: All Pages. | Most flexible, no code deploy needed |
| **CMS Plugin** | WordPress: plugins like `WP-Marketo Munchkin` | CMS-based sites |
| **Site-wide header** | Add to `<head>` in site template/layout | Static or framework sites (Rails, Django, etc.) |
| **Tealium / Adobe Launch** | Tag management platform custom script tag | Enterprise tag management |

### Verification
```js
// Open browser console on any page where Munchkin is deployed
Munchkin.munchkinId
// Expected: returns your <MUNCHKIN_ID> string

// Check network tab for
// Request URL: https://<munchkinID>.marketo.net/  (status 200)
```

### Munchkin Configuration Options

| Option | Description |
|--------|-------------|
| `delay: 500` | Milliseconds to wait before processing page data (reduces page load impact) |
| `wsInfo: '...'` | Pass additional web service info for advanced targeting |
| `cookieLife: 365` | Override the default cookie lifetime (days) |
| `pageType: 'landing-page'` | Override automatic page-type detection |

Example with options:
```js
Munchkin.init('<MUNCHKIN_ID>', { delay: 500, cookieLife: 365 });
```

### Known Limitations
- Munchkin works on `https://` pages by default. For `http://` pages, confirm the mix-mode script load works.
- Single-page applications (SPA) may require additional instrumentation — use `Munchkin.munchkinFunction('visitWebPage', {url: '...'});` for custom page tracking.
- The snippet should load **after** other analytics tags to avoid race conditions, unless all are in GTM.

---

## 8. Post-Setup Validation Checklist

Run this checklist end-to-end after completing all steps above.

### DNS & Email (Day 1 after propagation)

| # | Check | Method | Pass/Fail |
|---|-------|--------|-----------|
| 1 | Landing Page CNAME resolves | `dig pages.yourdomain.com CNAME` | |
| 2 | Email Tracking CNAME resolves | `dig email.yourdomain.com CNAME` | |
| 3 | SPF record includes Marketo | `dig yourdomain.com TXT \| grep mktomail` | |
| 4 | DKIM DNS record exists | `dig marketo._domainkey.yourdomain.com TXT` | |
| 5 | DKIM validates in Marketo Admin | Admin → Email → DKIM → Validate | |
| 6 | DKIM signing is enabled | Checkbox in Admin → Email → DKIM | |

### Marketo Admin

| # | Check | Pass/Fail |
|---|-------|-----------|
| 7 | Landing Page Domain configured | |
| 8 | Tracking Link Domain configured | |
| 9 | No unapproved emails due to link domain change | |
| 10 | Templates from Creative Services received & approved | |

### Munchkin

| # | Check | Method | Pass/Fail |
|---|-------|--------|-----------|
| 11 | Munchkin snippet on all pages | Network tab — look for `munchkin.marketo.net` calls | |
| 12 | Known visitor tracked | Visit site → check Marketo **Activity Log** → `Visit Web Page` | |
| 13 | Form submission tracked | Submit test form → check **Activity Log** → `Fill Out Form` | |

### Email Deliverability

| # | Check | Method | Pass/Fail |
|---|-------|--------|-----------|
| 14 | Send test email via Marketo | Send to internal test inbox | |
| 15 | No SPF/DKIM failures in headers | View raw email headers — `spf=pass dkim=pass` | |
| 16 | Email renders in major clients | Litmus or Email on Acid test | |
| 17 | Email not quarantined | Check spam/quarantine folders | |

---

## Rollback Plan

If any step causes issues, use this table to revert:

| Component | Rollback Action | Impact Duration |
|-----------|----------------|-----------------|
| Landing Page CNAME | Delete CNAME record → revert domain in Marketo Admin | DNS TTL + propagation |
| Email Tracking CNAME | **Contact Marketo Support** — domain change is one-way and needs CS to reverse | Request-dependent |
| SPF record | Remove `include:mktomail.com` from SPF record | DNS TTL + propagation |
| DKIM | Disable signing in Admin → Email → DKIM | Immediate |
| Munchkin | Remove snippet from pages | Immediate |

---

## Estimated Timeline

| Step | Time (active) | Wait/Dependency |
|------|---------------|-----------------|
| CNAME for Landing Pages | 30 min | DNS propagation (up to 72h) |
| CNAME for Email Tracking | 15 min | DNS propagation (up to 72h) |
| SPF/DKIM Setup | 1 hour | DNS propagation (up to 72h) |
| Whitelist Email Servers | 30 min | None |
| Request Templates | 30 min | Creative Services (5–10 business days) |
| Deploy Munchkin | 1 hour | None |
| **Total (active work)** | **~3.5 hours** | **~5–10 business days** (due to Creative Services timeline) |

---

**Document prepared for REQ-0001-7 — Marketo Production Setup Steps**  
*Based on Marketo documentation and standard integration best practices.*