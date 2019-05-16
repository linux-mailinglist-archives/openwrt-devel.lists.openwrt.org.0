Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A102015C
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 10:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uX7lPJ6Rmg6WkB2zcDsEu+HaoLPFcRUhQdiYxtUvm/s=; b=In1QKz9ZkLQ2yUJYJuI9ONd/0n
	9DdtUbFcQ6beI8PRqap8OTxP6a/6hHBCxM7186IGGpMxbyFUWtyncWSkEh8ZNBB5QumQGgBLm5tjF
	UH6vEWhIbfvoJrMCKe5he5sG+8pwdtpf+sU7QJoyDtiIe3HzGXlCA5JF/pRd1KXu4Ze7B5lLbnY47
	SqQMeIv1bi5ZOD0wIaQMm74XaIc0iUKkgFB26qe/hKo6xps1M9R8kr+6yijUgldiU1c2OqzebyOOj
	nCnmisLMgHsx5WbgDpf59ijVNXnjQvTTRse9sGVXUyHO1GlzwbAZ2mIW6R0wVkkvvvtgTlS5ov2xu
	Nx7qBA5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBoc-00018f-ME; Thu, 16 May 2019 08:32:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBoV-00018I-A1
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 08:32:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4FC724D64;
 Thu, 16 May 2019 10:32:28 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b7f21043;
 Thu, 16 May 2019 10:32:27 +0200 (CEST)
Date: Thu, 16 May 2019 10:32:27 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190516083226.GE63920@meh.true.cz>
References: <20190515185045.22878-1-kristian.evensen@gmail.com>
 <20190515192113.GC63920@meh.true.cz>
 <CAKfDRXjzwCDur1Sh19Wr1_2LKP+FAbCk1Ns_werBUqKPD2RzEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfDRXjzwCDur1Sh19Wr1_2LKP+FAbCk1Ns_werBUqKPD2RzEw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013231_495063_FF462296 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: Add support for Head Weblink
 HDRM200
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S3Jpc3RpYW4gRXZlbnNlbiA8a3Jpc3RpYW4uZXZlbnNlbkBnbWFpbC5jb20+IFsyMDE5LTA1LTE2
IDEwOjE5OjU5XToKCkhpLAoKPiBPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCA5OjIxIFBNIFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+ID4gVGhhbmtzLCBJJ3ZlIG1lcmdlZCBp
dCBpbnRvIG15IHN0YWdpbmcgdHJlZVsxXSwgYnV0IEkgaGFkIHRvIGZpeCBvbmUgbWVyZ2UKPiA+
IGNvbmZsaWN0IGluIHRhcmdldC5tayBzbyBwbGVhc2UgY2hlY2sgaXQgaWYgSSBkaWQgaXQgcHJv
cGVybHkuCj4gCj4gVGhhbmtzIGFuZCBzdHJhbmdlIGFib3V0IHRoZSBjb25mbGljdCArIHdoaXRl
c3BhY2UsIGFzIHBhdGNoIGFwcGxpZXMKPiBjbGVhbmx5IHRvIG1hc3RlciBhbmQgY2hlY2twYXRj
aCBkb2VzIG5vdCBjb21wbGFpbi4KCkp1c3QgRllJCgokIGdpdCBkZXNjcmliZQoKIHJlYm9vdC0x
MDAxMS1nNzFhYjJjOWQxNzk2CgokIC4uL21haW50YWluZXItdG9vbHMvcGF0Y2h3b3JrLWFwcGx5
LnNoIDExMDAxNTgKCiBBcHBseWluZzogcmFtaXBzOiBBZGQgc3VwcG9ydCBmb3IgSGVhZCBXZWJs
aW5rIEhEUk0yMDAKIC9vcHQvZGV2ZWwvb3BlbndydC9vcGVud3J0LmdpdC8uZ2l0L3JlYmFzZS1h
cHBseS9wYXRjaDoyODk6IHNwYWNlIGJlZm9yZSB0YWIgaW4gaW5kZW50LgoJICAJICAgICB1cW1p
IGttb2QtdXNiLXNlcmlhbCBrbW9kLXVzYi1zZXJpYWwtb3B0aW9uCgogICAgICAgICAgICAgICAg
IF4KICAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICAgYC0tIHdoaXRlc3BhY2UgaXNz
dWUKCiBlcnJvcjogcGF0Y2ggZmFpbGVkOiB0YXJnZXQvbGludXgvcmFtaXBzL210NzYyMC90YXJn
ZXQubWs6NAogZXJyb3I6IHRhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIwL3RhcmdldC5tazogcGF0
Y2ggZG9lcyBub3QgYXBwbHkKIFBhdGNoIGZhaWxlZCBhdCAwMDAxIHJhbWlwczogQWRkIHN1cHBv
cnQgZm9yIEhlYWQgV2VibGluayBIRFJNMjAwCgogd2hpY2ggd2FzIGNhdXNlZCBieToKCiAgY29t
bWl0IDM2NzgxM2I5YjE3YzUwYjllMWJjMjU5MzNhM2NjZDI1MmMwODEzZTQKICBBdXRob3I6IERl
bmcgUWluZ2ZhbmcgPGRlbmdxZjZAbWFpbDIuc3lzdS5lZHUuY24+CgogICAgcmFtaXBzOiBtdDc2
MjA6IGZpeCBkZXBlbmRlbmNpZXMKCiAgZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMv
bXQ3NjIwL3RhcmdldC5tayBiL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIwL3RhcmdldC5tawog
IGluZGV4IDU0NDI1NDYwNGU1Yy4uNzg4YzlhMWRmYzFhIDEwMDY0NAogIC0tLSBhL3RhcmdldC9s
aW51eC9yYW1pcHMvbXQ3NjIwL3RhcmdldC5tawogICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMv
bXQ3NjIwL3RhcmdldC5tawogIEBAIC03LDcgKzcsNyBAQCBCT0FSRE5BTUU6PU1UNzYyMCBiYXNl
ZCBib2FyZHMKICBGRUFUVVJFUys9dXNiCiAgQ1BVX1RZUEU6PTI0a2MKIAogIC1ERUZBVUxUX1BB
Q0tBR0VTICs9IGttb2QtcnQyODAwLXBjaSBrbW9kLXJ0MjgwMC1zb2Mgd3BhZC1iYXNpYwogICtE
RUZBVUxUX1BBQ0tBR0VTICs9IGttb2QtcnQyODAwLXNvYyB3cGFkLWJhc2ljCgotLSB5bmV6egoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
