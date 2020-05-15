Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DB01D5CED
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 01:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyTK+g1vraG48TBWGApADzB9k6Mn6pN/Gy3lvqLyGAE=; b=Zi3sueHwt1WfLp
	7tiCsBhGRtWdVZmrJHgpBWRkXvS7YAj2NXuSSv2nJnrqavCpnyo7NpvAsSke+hsOmjSLXMpXRTQzj
	ksuYSY7Na+s4f54xKSRwmjGDy2KiHrx8IDiEw8tIPggUvB1GZ0j40Bl4eQQ0TO/2bp0UA9fRK0R+p
	4GxP6kjhwG7j/IKd/IEQY9Vyg+/Oe2356RlqKP6ed/gzKB8NVd8AVUFY2ixed/Eja/oaP3dSMdEdd
	QJ39a/f+YLU6XFGiQXGVjxvfN23Fm7lGk14uKAZyV5nrHj0h/0YThKIaO4VjP2IxmbeUWplO6tiim
	EGgHLINGNpT1NGDfdqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZkEw-0006hl-3m; Fri, 15 May 2020 23:59:42 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZkEp-0006h6-J0
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 23:59:37 +0000
Received: from [192.168.1.19] (iphoneXS-philip.redfish-solutions.com
 [192.168.1.19]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04FNxWan021626
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
 Fri, 15 May 2020 17:59:33 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 15 May 2020 17:59:31 -0600
Message-Id: <B60405E4-0817-4032-8342-B62319437B95@redfish-solutions.com>
References: <313EC804-9739-435A-92C2-DD394F9B3ADF@redfish-solutions.com>
In-Reply-To: <313EC804-9739-435A-92C2-DD394F9B3ADF@redfish-solutions.com>
To: Jo-Philipp Wich <jo@mein.io>
X-Mailer: iPhone Mail (17E262)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_165935_704836_307F22D2 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/1] firewall3: harden string
 functions that might overflow
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U28gdGhhdCBJIG1heSBjcmFmdCB0aGUgcmV3cml0ZSBhcHByb3ByaWF0ZWx5LCBpdCB3b3VsZCBo
ZWxwIHRvIGtub3cgd2hhdCB5b3VyIG9iamVjdGlvbiB0byBzdHJsY3B5KCkgaXMuCgpTZW50IGZy
b20gbXkgaVBob25lCgo+IE9uIE1heSAxNCwgMjAyMCwgYXQgNzoyNCBQTSwgUGhpbGlwIFByaW5k
ZXZpbGxlIDxwaGlsaXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiB3cm90ZToKPiAKPiDv
u79XaGF0IHNob3VsZCBJIHVzZSBpbnN0ZWFkIG9mIHN0cmxjcHkgb3Igc3RyY3B5Pwo+IAo+IFNl
bnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gTWF5IDE0LCAyMDIwLCBhdCAxMTowNCBBTSwgSm8t
UGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPiB3cm90ZToKPj4gCj4+IO+7v0hpLAo+PiAKPj4gdGhl
IHNwcmludGYoKSB0byBzbnByaW50ZigpIGNoYW5nZXMgYXJlIGZpbmUgdG8gbWUuIFBsZWFzZSBv
bWl0IHRoZQo+PiBjb252ZXJzaW9ucyB0byBzdHJsY3B5KCkgYW5kIHBsZWFzZSBkb24ndCB1c2Ug
Zm1lbW9wZW4oKS4KPj4gCj4+IH4gSm8KPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IG9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
