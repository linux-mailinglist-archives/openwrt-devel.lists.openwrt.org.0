Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1B4168B01
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 01:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOJCuGnAsdwRQXwVOngL9QDsktEOaFBhcBaDt3rrpyU=; b=Ku3vge2lfli887
	cst+8nnFTwfZ8tZ8q5MAqCmt9VxvkAV0l/Jb9h8Fkt6KT0nhIxee/NAd9KDCY4gK8H4HXi18ZWjt/
	24dYzgL7vbh8Uzoq/TVa0isM4lbEyNMkg9sqekbY51SozVjNxKtnZFoRkCzbQoj1owMqAj1r0XSQL
	7OaKMkBZ5gql/QY7J84EDNgmw0BrZIfYDm2+Sh6WPgt25lThxS9sL53zVCeVRQ8mOyrK17Ajd8btf
	LnxqUoy91GHmn09jSSP2witA959BMSLu00UZF9tDuLbkHsO71sr/LEMAhPyRPud/gasiFOaRUzQ5H
	fb0wf0PYoHlAdI4295sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5IhU-0005MG-2U; Sat, 22 Feb 2020 00:31:20 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5IhH-0005Lc-4H; Sat, 22 Feb 2020 00:31:11 +0000
Received: by mail-lj1-x22e.google.com with SMTP id w1so4031685ljh.5;
 Fri, 21 Feb 2020 16:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=KU++dXsFTEQrJvZgO8EDQ2cmdLp4Tjv9RmnZ7xRYgFw=;
 b=oNWlQYR+Csn3SNGVavyOLdSPidpo9CQHfUEU5It72qy4O2VAqRCD4WmNTsweh2p1rj
 C5Fn1cJfaxar38Py7GPFcB3oGDLnN+U/SmrmJ1DSYX5fWG1UprhV6rlcuiJtF2hsWjRA
 1jwc+tjoLhvvQ/OtUrfjcAn9ROxQFM5lRfzd6oG3VmuwRaHTDV7avc9GoEZZoksLIbRA
 Z+oJmR0IYcHvPrMO2K3pdwweU1goULk8ljo99aS6moG1alB6ERFDH5CeTdO0mstn7ApY
 2cb2Vamm3DPaHXYbch6XioO5eKe/UlD5jSIXWLzZzYuNfAgPIoDXF/qr3PYdORWJmixo
 K/hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=KU++dXsFTEQrJvZgO8EDQ2cmdLp4Tjv9RmnZ7xRYgFw=;
 b=Vk8UUJTl1c3gDbOApZsFRaqJiVnys5ZOpKlEyqa/a/HFCdD+n+6u21DZmku1j/AcuQ
 9dHqq/ebpMh3sGGE/76OARmkou1yyynJkxSOdrBAIASRgGGAUQ7h7nvFPRxmZ5jNb1ct
 3q3BzGAQwXDBavOb7aLUpPDZtRatoELeQmmmzjMZ+uk3sRYEOaKNq+ONpOYBg32DcxG+
 AdyrVNgPijSwumODLBM7j+sqp9LZmZrWpLXf9iPO9bDfGmF9VTuKkXB0m2N2JBpuIOgK
 dala49siY50K4rf7vNxrkuXzt4RPCGYR2ITkrn9O5LtR2pSvpSffz/3QS6gLf7lNGId+
 6SCg==
X-Gm-Message-State: APjAAAUrn+PiSWCPna+Mtz8IdN+IxG/p0ZwJeptPLTLpQOgyo2r1RskY
 TBise0h04eYOdaqN6XJHCSxpz3Iz
X-Google-Smtp-Source: APXvYqyZCEMaqLw+bwjNogjqM5hs1Q3OCSb3zmR4UTzYjy3C3KxkMrsGXxGMxhnNETWy1+d478BNow==
X-Received: by 2002:a05:651c:10f:: with SMTP id
 a15mr23706174ljb.237.1582331460811; 
 Fri, 21 Feb 2020 16:31:00 -0800 (PST)
Received: from [10.0.0.21] (user-5-173-246-254.play-internet.pl.
 [5.173.246.254])
 by smtp.googlemail.com with ESMTPSA id e25sm2390119ljp.97.2020.02.21.16.30.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 16:31:00 -0800 (PST)
To: ansuelsmth@gmail.com, 'Jo-Philipp Wich' <jo@mein.io>,
 'OpenWrt Project Administration' <openwrt-adm@lists.openwrt.org>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
 <000301d5e8ce$5cdeccf0$169c66d0$@gmail.com>
From: Lech Perczak <lech.perczak@gmail.com>
Message-ID: <2be43b92-8c6e-374d-b7af-26a13f667a74@gmail.com>
Date: Sat, 22 Feb 2020 01:30:53 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <000301d5e8ce$5cdeccf0$169c66d0$@gmail.com>
Content-Language: pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_163107_195308_4BC1B96C 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lech.perczak[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] R: Next maintenance releases
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDIwMjAtMDItMjEgb8KgMTY6NDgsIGFuc3VlbHNtdGhAZ21haWwuY29tIHBpc3plOgo+
PiBIaSwKPj4KPj4gSSdkIGxpa2UgdG8gcmVsZWFzZSAxOS4wNy4yIGFuZCAxOC4wNi44IHNvbWV0
aW1lIGJldHdlZW4gU3VuIDIzcmQgYW5kCj4+IFR1ZSAyNXRoLiBJZiB5b3UgaGF2ZSBwZW5kaW5n
IGltcG9ydGFudCBmaXhlcyB5b3UgbGlrZSB0byBzZWUgYmFja3BvcnRlZAo+PiB0byB0aGUgcmVz
cGVjdGl2ZSBicmFuY2hlcyBwbGVhc2UgZG8gc28gQVNBUCBvciBtZW50aW9uIHRoZSBjb21taXRz
IGluIGEKPj4gcmVwbHkgdG8gdGhpcyBtYWlsLgo+Pgo+Pgo+PiBSZWdhcmRzLAo+PiBKbwo+Pgo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzI3NjkKPiBDYW4g
dGhpcyBiZSBtZXJnZWQ/ICBJdCBmaXggaW1wb3J0YW50IHBlcmZvcm1hbmNlIHByb2JsZW0gZm9y
IGlwcTgwNngKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKSSdkIHZlcnkgbXVjaCBsaWtlIHRvIHNlZSB0aGlzIG1lcmdlZCB0b286
Cmh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yNjgzCkFzIEkgc3RhdGVk
IGluIFBSOgpUZXN0ZWQtQnk6IExlY2ggUGVyY3phayA8bGVjaC5wZXJjemFrQGdtYWlsLmNvbT4K
Ci0tIApXaXRoIGtpbmQgcmVnYXJkcywKTGVjaCBQZXJjemFrCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
