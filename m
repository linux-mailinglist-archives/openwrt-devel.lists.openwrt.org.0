Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B021192AC6
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 15:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h4c+3/NUiqZWRjEp6oyUssU5yswnyTjRcLy3XMf9j+Q=; b=ia1CCXzBbkpHDSdr2wZucXXoY
	2DNYbSczu9Qtt7Drz2xpt+m6RR8aKEg9HHbE6auiPOaQfVDmctKeyjbQEh+TS62elmtoF1Rc9Jov7
	nUZ3MeT2QezaIPEHcxxNAETFHB6nZjlxyuHEaQkdTNjlTlUOUeiT+/g1QCFNEWir24iTORTo52b25
	aJT8HSbfPiZvgnbHkNRBF/eaxCFO46heKACJybJzmTfnZycZddRpLMhn5n83oRyiOFv1bM6QALEp6
	ZUjVowsDrMg4WF9hIAdFheEGHEbdW3P5R+DUwjikSKN0HZHWZsW8zPIZcH3KoYnby1sRofEFxgVk7
	31dx7Js8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6hN-0004Vn-5r; Wed, 25 Mar 2020 14:08:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6hD-0004VK-S2
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 14:07:53 +0000
Received: by mail-lj1-x243.google.com with SMTP id g12so2608505ljj.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 07:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IiHx2dNzt1Jbi4MtL6qVB/aPBR6/LoWGToZ3JHGDKkU=;
 b=Jc/kTpIDJXK0/2NBaFV6gNMkmiJaqMihVfr8773/HqB0uEgodkKH4uZ4H2ofe3horR
 A8k76hLhacdBCdgPLHB2Ae1Ir3Ujr1/ky7tCZrNpz45GtQfV9lb9huJWiYOxeozO4BRR
 0AaEYlMKI+BvTcBQdjaVTUH3+odwebtaHcNOOXWwoBB8Ltp6651fZwnSmSgele3yYL8C
 +Ev1FpajXmWr+CnMIWhgTANXpJjxN0OsowKHTfbA3dQAt7HQy6gpstk8TJ9ToXvfD65z
 9gWT/80949vMJ7aWnViz3vf9et5Cm4HxVukGg0+oJjU3C6WG+ztio+bFmHmeL/jkvhpr
 1Hng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IiHx2dNzt1Jbi4MtL6qVB/aPBR6/LoWGToZ3JHGDKkU=;
 b=jzmHTGhK4FT8xFv3Gwj8kRVi6DvIJfoDU/DSP3wt6jw7ncIRT3RM27ovP5QMqo9nqn
 PnuCjX1eK/hdrJKdMPrk9R0wgaeEKhnFMy/X6knCvIoSyafIzml7BrMdiFgrrd8re6CJ
 r7opY+qggRqLPJCI1QbLiC6G2sDrv6A9txVoVcboJrW1gFnoIrV8ZG3kZX8lgywUvVoR
 zqR1N8z9JmHO3vfHw28/gM6MQ79/nXVVvKXGvguhc9j338O6Nzbu6NROkDECTp4/otho
 T9gbQLWeJvWy0FaN/4aHZrhaAEjYxtkkP5T2yU9J7Z2qEpww3rJ+SGKhkzezNJo+8SL0
 0rwQ==
X-Gm-Message-State: ANhLgQ3AXuJQhYxwIfB4YGAnm+o4pa5sdsywLgogDqraD4eGBDQYOOgo
 I6jZNaC/jbINXAoqV/vMvQI=
X-Google-Smtp-Source: APiQypIp/gUoyCwPUdtnO+NnHSQEW2A/ks3bkp+MxEm0OLbA1NuxIdSjpHGWwf6FJOIpIZi+AVawIw==
X-Received: by 2002:a05:651c:1061:: with SMTP id
 y1mr1961472ljm.285.1585145270125; 
 Wed, 25 Mar 2020 07:07:50 -0700 (PDT)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id y184sm11873480lfc.97.2020.03.25.07.07.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Mar 2020 07:07:49 -0700 (PDT)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200324233343.27749-1-pepe2k@gmail.com>
 <003c01d60297$995af2c0$cc10d840$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <d1346acc-465b-baa3-ae98-50ebd9660033@gmail.com>
Date: Wed, 25 Mar 2020 15:07:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <003c01d60297$995af2c0$cc10d840$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_070751_926045_F556368E 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default
 with any wpad variant
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
Cc: Jo-Philipp Wich <jo@mein.io>, Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuLAoKT24gMjUuMDMuMjAyMCAxMjoyMSwgbWFpbEBhZHJpYW5zY2htdXR6bGVyLmRl
IHdyb3RlOgo+IEhpIFBpb3RyLAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBG
cm9tOiBvcGVud3J0LWRldmVsIFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9w
ZW53cnQub3JnXQo+PiBPbiBCZWhhbGYgT2YgUGlvdHIgRHltYWN6Cj4+IFNlbnQ6IE1pdHR3b2No
LCAyNS4gTcOkcnogMjAyMCAwMDozNAo+PiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwo+PiBTdWJqZWN0OiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSB0YXJnZXQubWs6IGVuYWJs
ZSBpd2luZm8gYnkgZGVmYXVsdCB3aXRoCj4+IGFueSB3cGFkIHZhcmlhbnQKClsuLi5dCgo+IFNp
bmNlIHlvdSBhcmUgdG91Y2hpbmcgdGhpcywgbWF5YmUgeW91IGNhbiBlbGFib3JhdGUgd2h5IHRo
aXMKPiBleHRyYV9wYWNrYWdlcyBjb25zdHJ1Y3QgaXMgbmVlZGVkIGF0IGFsbD8KCkkgZG9uJ3Qg
a25vdyBleGFjdCByZWFzb24gYW5kIGl0IHdhcyBhZGRlZCBsb25nIHRpbWUgYWdvLCBpbiAyMDE0
LCBzZWU6IAo2NDM1YjhiYjI3ZS4gSSBzdXBwb3NlIHRoYXQgd2FzIHRoZSBlYXN5IHdheSB0byBo
YW5kbGUgaXQgYmFjayB0aGVuPwoKPiBXaHkgY2FuJ3Qgd2UganVzdCBhZGQgaXdpbmZvIGFzIHNl
bGVjdGl2ZSBkZXBlbmRlbmN5IHRvIHRoZSB3cGFkLS9uYXMKPiBwYWNrYWdlcyBhcyB3ZSBkbyBm
b3IgYWxsIG9mIHRoZSBvdGhlciBwYWNrYWdlcz8KCkNvdWxkIHlvdSBleHBsYWluIHdoYXQgeW91
IG1lYW4gYnkgJ3NlbGVjdGl2ZSBkZXBlbmRlbmN5Jz8KCkkgZG9uJ3QgdGhpbmsgREVQRU5EUyBp
cyBjb3JyZWN0IHdheSB0byBoYW5kbGUgdGhpcy4gRG8geW91IG1lYW4gdXNlIAonc2VsZWN0IGl3
aW5mbycgaW4gd3BhZC9uYXMgcGFja2FnZXMgY29uZmlnPwoKPiBJJ20gYXNraW5nIGJlY2F1c2Ug
SSByZWNlbnRseSBoYWQgYSBkb3duc3RyZWFtIGNhc2Ugd2hlcmUgd2UgdXNlCj4gaG9zdGFwZCBp
bnN0ZWFkIG9mIHdwYWQgYW5kIHdhbnRlZCB0byBnZXQgb2YgaXdpbmZvLiBJIGV4cGVjdGVkCj4g
aXdpbmZvIHRvIGdvIGF3YXkgYmVjYXVzZSBub3RoaW5nIHNlbGVjdGVkIGl0IGFueW1vcmUsIGJ1
dCBpbiB0aGlzCj4gY2FzZSBpdCB0dXJuZWQgb3V0IHRoYXQgaXdpbmZvIGlzIG5vdCBhdXRvbWF0
aWNhbGx5IGRlc2VsZWN0ZWQsIGJ1dAo+IGhhcyB0byBiZSByZW1vdmVkIG1hbnVhbGx5IGFzIHdl
bGwuCgpJIHN1cHBvc2UgeW91IHNob3VsZCBmaXJzdCBsb29rIGF0IERFRkFVTFRfUEFDS0FHRVMg
YW5kIHRhcmdldC5tay4KSW4gbW9zdCBjYXNlcywgd3BhZC0qIGlzIGFkZGVkIHRoZXJlIGFuZCB0
aGF0J3MgaG93IGl3aW5mbyBnZXRzIHNlbGVjdGVkLgoKQnV0IEkgc2VlIHRoZSBwcm9ibGVtIGhl
cmUsIEknbSBqdXN0IG5vdCBzdXJlIGlmIGl0J3Mgc2FmZSB0byBjaGFuZ2UgCmN1cnJlbnQgYXBw
cm9hY2guIE1heWJlIEZlbGl4IG9yIEpvIGFyZSBhYmxlIHRvIGV4cGxhaW4gcmVhc29uIGZvciB1
c2luZyAKZXh0cmFfcGFja2FnZXMuCgotLSAKQ2hlZXJzLApQaW90cgoKPiAKPiBCZXN0Cj4gCj4g
QWRyaWFuCj4gCj4+IAo+PiAgZGVmaW5lIFByb2ZpbGVEZWZhdWx0Cj4+ICAgIE5BTUU6PQo+PiAt
LQo+PiAyLjIwLjEKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+PiBvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
