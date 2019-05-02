Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F9F1130F
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 08:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PYsyzZsxjHcMR4BBSQ1AgUM452z9/oeR2nQbKCsjxlM=; b=kW7F0pyaK5dL8hvBuBL3xvAYh
	ldRMLExZbpkgg5oG/nY20PA99Ph7CGBZ+UkEFPtP9Tgw6we47D5aWxK95U4kjujk4e6KxWrAuRcVa
	f5IjBjpPWGDavKOUmTrut7RomzHPrd7+JXdod/hmRKKMVjwsrkR2DCYo0l4hAdSvUems/bEpplFMz
	WYNggZRr1p6lKX6IfjNQx8/kv8VwGXyJ8w3rs+NscMZyozKrHnb176Lt0LnVtQz5tbVdkq48oFIPH
	y/qDOcTSay8NpG+u1XPp09SFMEEWhsgJXvr8TAgP3DZ6aMed0751PAC3VEt+fMCOOa/DnayuK2n8p
	FUrG1zLdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM4qZ-0005QR-7i; Thu, 02 May 2019 06:05:31 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM4qQ-0005PZ-VP
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 06:05:25 +0000
Received: from p548c8770.dip0.t-ipconnect.de ([84.140.135.112]
 helo=[192.168.45.69])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hM4qK-0007ON-Ih; Thu, 02 May 2019 08:05:16 +0200
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <20190501052321.11985-1-zajec5@gmail.com>
 <de57d2ea-3090-1f56-d4c1-9692b86707b1@wwsnet.net>
From: John Crispin <john@phrozen.org>
Message-ID: <5518eab1-2da0-1cbc-a6b5-47e22fdc9d5f@phrozen.org>
Date: Thu, 2 May 2019 08:05:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <de57d2ea-3090-1f56-d4c1-9692b86707b1@wwsnet.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_230523_167210_99129EAF 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] procd: add procd_running() helper for
 checking running state
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDAxLzA1LzIwMTkgMTk6MDgsIEpvLVBoaWxpcHAgV2ljaCB3cm90ZToKPiBIaSwKPgo+IGNv
bW1lbnQgaW5saW5lIGJlbG93Lgo+Cj4+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWls
ZWNraS5wbD4KPj4KPj4gVGhpcyBzaG91bGQgYmUgaGVscGZ1bCBmb3IgaW1wbGVtZW50aW5nIHNl
cnZpY2VfcnVubmluZygpIGluIHByb2NkIGluaXQKPj4gc2NyaXB0cy4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+PiAtLS0KPj4gICBwYWNr
YWdlL3N5c3RlbS9wcm9jZC9maWxlcy9wcm9jZC5zaCB8IDE1ICsrKysrKysrKysrKysrKwo+PiAg
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9wYWNr
YWdlL3N5c3RlbS9wcm9jZC9maWxlcy9wcm9jZC5zaCBiL3BhY2thZ2Uvc3lzdGVtL3Byb2NkL2Zp
bGVzL3Byb2NkLnNoCj4+IGluZGV4IDcyZjI1ZmUwYzAuLmFkZTU1YTM0NGYgMTAwNjQ0Cj4+IC0t
LSBhL3BhY2thZ2Uvc3lzdGVtL3Byb2NkL2ZpbGVzL3Byb2NkLnNoCj4+ICsrKyBiL3BhY2thZ2Uv
c3lzdGVtL3Byb2NkL2ZpbGVzL3Byb2NkLnNoCj4+IEBAIC0yNiw2ICsyNiw5IEBACj4+ICAgIyBw
cm9jZF9jbG9zZV9pbnN0YW5jZSgpOgo+PiAgICMgICBDb21wbGV0ZSB0aGUgaW5zdGFuY2UgYmVp
bmcgcHJlcGFyZWQKPj4gICAjCj4+ICsjIHByb2NkX3J1bm5pbmcoc2VydmljZSwgW2luc3RhbmNl
XSk6Cj4+ICsjICAgQ2hlY2tzIGlmIHNlcnZpY2UvaW5zdGFuY2UgaXMgY3VycmVudGx5IHJ1bm5p
bmcKPj4gKyMKPj4gICAjIHByb2NkX2tpbGwoc2VydmljZSwgW2luc3RhbmNlXSk6Cj4+ICAgIyAg
IEtpbGwgYSBzZXJ2aWNlIGluc3RhbmNlIChvciBhbGwgaW5zdGFuY2VzKQo+PiAgICMKPj4gQEAg
LTM5OCw2ICs0MDEsMTggQEAgX3Byb2NkX2FkZF9pbnN0YW5jZSgpIHsKPj4gICAJX3Byb2NkX2Ns
b3NlX2luc3RhbmNlCj4+ICAgfQo+PiAgIAo+PiArcHJvY2RfcnVubmluZygpIHsKPj4gKwlsb2Nh
bCBzZXJ2aWNlPSIkMSIKPj4gKwlsb2NhbCBpbnN0YW5jZT0iJHsyOi1pbnN0YW5jZTF9Igo+PiAr
CWxvY2FsIHJ1bm5pbmcKPj4gKwo+PiArCWpzb25faW5pdAo+PiArCWpzb25fYWRkX3N0cmluZyBu
YW1lICIkc2VydmljZSIKPj4gKwlydW5uaW5nPSQoX3Byb2NkX3VidXNfY2FsbCBsaXN0IHwganNv
bmZpbHRlciAtZSAiQC4kc2VydmljZS5pbnN0YW5jZXMuJHtpbnN0YW5jZX0ucnVubmluZyIpCj4g
UGFzcyAneyAibmFtZSI6ICInIiRzZXJ2aWNlIiciIH0nIGFzIGFyZ3VtZW50IHRvIHRoZSBsaXN0
IGNhbGwgdG8gcmVkdWNlIHRoZSBhbW91bnQgb2Ygb3V0cHV0IHlvdQo+IG5lZWQgdG8gZmlsdGVy
LgoKdGhlIGxpbmUgYWJvdmUgdGhlIGludm9jYXRpb24gYWxyZWFkeSBhZGRzIHRoZSBzZXJ2aWNl
IG5hbWUgaWYgaSBhbSBub3QgCm1pc3Rha2VuCgpBY2tlZC1ieTogSm9obiBDcmlzcGluIDxqb2hu
QHBocm96ZW4ub3JnPgoKCj4+ICsKPj4gKwlbICIkcnVubmluZyIgPSAidHJ1ZSIgXQo+PiArfQo+
PiArCj4+ICAgX3Byb2NkX2tpbGwoKSB7Cj4+ICAgCWxvY2FsIHNlcnZpY2U9IiQxIgo+PiAgIAls
b2NhbCBpbnN0YW5jZT0iJDIiCj4+Cj4KPiB+IEpvCj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
