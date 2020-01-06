Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D2D131C14
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 00:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gapeGZU5McHbXoYSRNny4wU/fz70h3Ss2UqyT1yUK+w=; b=d31HHgL+0xuoS/
	J6O3fsZppwXDzOh8EVMKe9fKEkRVnUklA0IubChMk41ntdRmK58NjZ1xYvSZWQCXh+ReZHSkKQsxK
	/4Q98AneScAgGiwoPg3NbSo5nqAWgYW4sDx8srlR7R0ys3ymYBNfYXFU0u9AvlIsPz2Bt2Kyb6Ljf
	fQ3fGG8Wuy1ekUyStxW7NJFJlixLWkIft0Ev/TxddKYXerfIviRzB6ttTRzDr//TovPhSu6CwgHlc
	W3a5jAq4uC5LE2SqCcppI8aO705fCPph235XK+djqxiao2hM0VkqaK+0BYduZMbEOviVsll1RibOO
	q5NArlUEBMZWbjV+lVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobTL-0000Pb-LS; Mon, 06 Jan 2020 23:07:43 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobTC-0000OU-U7
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 23:07:36 +0000
Received: by mail-il1-x12e.google.com with SMTP id b15so44098723iln.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 15:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iABTqZIJgnA0ifcomE1luCswzVpHdZg9q7+80UT+qoQ=;
 b=WYCVetmxv10nSY0+W5iZyinlr83PA/ACzMgwMzziCPeL1DfykvYdgcxTNjEXNAZV1H
 0Jd2F3aLHzxeyLb8t6gd7KTkKd26wQCE26+CsKEU+6MxlaEQEGxx+S5TDL9sdkFzyhEC
 YQctE+c5l43Q9WLTs1V++05neXI5UKkZoRMBD6tw75ulJfcK03XwSBkypvxrxsEo7hR+
 Ikd3fobWa1GFAiFXSrOmGuxtb3nNL7N7Bv5SmhAdb3RmHax0kRGqnXmlh9UuT5DphtXY
 zewDNWUJe9N+am/UaEeB7jVKJ0F4i6Fiq8Jel4Q13hkJrqPiGUda+Z1KxdfF3Mmg+VOY
 G7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iABTqZIJgnA0ifcomE1luCswzVpHdZg9q7+80UT+qoQ=;
 b=Kfp+lfC0pIXGzYJjluKKOVZnkQREXq55subV24t9AJ5ZYoLBiKaa/pMli4AYJVgtSO
 +45KB/XN2wAbITumk4WeHar0DCBDhgoKlpAKmSMaLtFgmFXRENIOuW2J7vulR8MSQvSH
 bG3SEDJNCJnTOTQG/eJUUSiOJsnxArk+L/k7abtTWtn7veLXRixdj4oGpgFkqXJYxWRv
 9cZTcr6FzsmxIwFCk7fldFiCRg30QjWVMqQI4a3vPtLR3lC48NBfM2qzQB8FH8py1MmM
 6SfnOAQ+2mrXrJmFPgDuBBDQe9G/hkwdW4EKYHcre6vOu1T2lB80Pg0sGNdExQsZNUjr
 t6Jg==
X-Gm-Message-State: APjAAAUnZv/OJ2Ap+zELAd5JKOGXGrQYFH31+udGKvR96LoNdvp2j2J+
 3LNTmgvgzsvjWUb8x1Dh2PHhEv/jsC8Tpj1Rpi0=
X-Google-Smtp-Source: APXvYqxfDdX1Te4QqM8Nv3IieUWB/DRu8/nvFoN7VM6iX4fdBF3Y+NcGcDJmQR6xxEtni1Rh7ZL/zBbaN7uNnDFS5ZA=
X-Received: by 2002:a92:c648:: with SMTP id 8mr90724730ill.208.1578352049663; 
 Mon, 06 Jan 2020 15:07:29 -0800 (PST)
MIME-Version: 1.0
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <419e6c10-b330-300b-7912-cc67de5a02fa@hauke-m.de>
In-Reply-To: <419e6c10-b330-300b-7912-cc67de5a02fa@hauke-m.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 7 Jan 2020 02:07:18 +0300
Message-ID: <CANoib0H92u+9pgO=TVdkoAjiZbdq78x5jA79SX-Y8Zu2+W8veQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_150735_003384_256C1D9A 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TmljZSByZWxlYXNlIHRhZyApKSBFdmVyIHRyaWVkIGEgYnVpbGQgdGVzdCBiZWZvcmUgdGhlIHRh
Zz8KClRyaWVkIHRvIGJ1aWxkCgpDb2xsZWN0ZWQgZXJyb3JzOgogKiBzYXRpc2Z5X2RlcGVuZGVu
Y2llc19mb3I6IENhbm5vdCBzYXRpc2Z5IHRoZSBmb2xsb3dpbmcgZGVwZW5kZW5jaWVzCmZvciBi
YXNlLWZpbGVzOgogKiBsaWJ1Ym94MjAxNzA2MDEKICogb3BrZ19pbnN0YWxsX2NtZDogQ2Fubm90
IGluc3RhbGwgcGFja2FnZSBiYXNlLWZpbGVzLgogKiBzYXRpc2Z5X2RlcGVuZGVuY2llc19mb3I6
IENhbm5vdCBzYXRpc2Z5IHRoZSBmb2xsb3dpbmcgZGVwZW5kZW5jaWVzCmZvciBvZGhjcDZjOgog
KiBsaWJ1Ym94MjAxNzA2MDEKICogb3BrZ19pbnN0YWxsX2NtZDogQ2Fubm90IGluc3RhbGwgcGFj
a2FnZSBvZGhjcDZjLgogKiBzYXRpc2Z5X2RlcGVuZGVuY2llc19mb3I6IENhbm5vdCBzYXRpc2Z5
IHRoZSBmb2xsb3dpbmcgZGVwZW5kZW5jaWVzCmZvciB1cm5nZDoKICogbGlidWJveDIwMTcwNjAx
CiAqIG9wa2dfaW5zdGFsbF9jbWQ6IENhbm5vdCBpbnN0YWxsIHBhY2thZ2UgdXJuZ2QuCgrQv9C9
LCA2INGP0L3Qsi4gMjAyMCDQsy4g0LIgMjA6NDAsIEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVr
ZS1tLmRlPjoKPgo+IE9uIDEyLzI0LzE5IDQ6NDggUE0sIEhhdWtlIE1laHJ0ZW5zIHdyb3RlOgo+
ID4gSGksCj4gPgo+ID4gSSB3b3VsZCBsaWtlIHRvIHRhZyAxOC4wNi42IHJlbGVhc2UgaW4gdGhl
IGV2ZW5pbmcgb2YgV2VkbmVzZGF5IDEuCj4gPiBKYW51YXJ5IGFuZCB0aGVuIHN0YXJ0IHRoZSBi
dWlsZGVycy4KPiA+Cj4gPiBJIHdvdWxkIGxpa2UgdG8gdGFnIDE5LjA3IGZpbmFsIHJlbGVhc2Ug
b24gRnJpZGF5IDMuIEphbnVhcnkgYW5kIHRoZQo+ID4gc3RhcnQgdGhlIGJ1aWxkZXJzIG9uIFNh
dHVyZGF5IG9yIFN1bmRheS4KPiA+Cj4gPiBBcmUgdGhlcmUgYW55IG9iamVjdGlvbnMgdG8gdGhl
c2UgZGF0ZXM/Cj4gPgo+ID4gQm90aCByZWxlYXNlcyBzaG91bGQgZml4IGFsbCBrbm93biBzZWN1
cml0eSBwcm9ibGVtcywgdGhpcyBpcyByZWxlYXNlCj4gPiBnYXRpbmcsIGJ1dCBJIHRoaW5rIGV2
ZXJ5dGhpbmcgaXMgZml4ZWQgbm93Lgo+ID4KPiA+Cj4gPiBXZSBub3cgaGF2ZSB0aGUgYXRoMTBr
LWN0IHNtYWxsIGJ1ZmZlcnMgdmVyc2lvbiBpbiBtYXN0ZXIgYW5kIDE5LjA3LCBmb3IKPiA+IHRo
ZSAxOS4wNyBicmFuY2ggaXQgaGFzIHRvIGJlIHNlbGVjdGVkLCBidXQgUGF1bCBGZXJ0c2VyIGFs
cmVhZHkKPiA+IHByb3Bvc2VkIGEgcGF0Y2guCj4gPgo+ID4gSGVyZSBzb21lIHBlb3BsZSBhcmUg
Y29tcGxhaW5pbmcgYWJvdXQgYmFkIDVHSHogcGVyZm9ybWFuY2U6Cj4gPiBodHRwczovL2J1Z3Mu
b3BlbndydC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0yNjgyCj4gPiBodHRwczov
L2ZvcnVtLm9wZW53cnQub3JnL3Qvb3BlbndydC0xOS0wNy0wLXNlY29uZC1yZWxlYXNlLWNhbmRp
ZGF0ZS80OTU5My80MQo+ID4gVGhpcyBzaG91bGQgYmUgcmVsYXRlZCB0byB0aGUgaG9zdGFwZCB1
cGRhdGUgZnJvbSAyLjcgdG8gMi45Lgo+ID4gRG9lcyBzb21lb25lIGhhdmUgdGltZSB0byBkZWJ1
ZyB0aGlzPyBJdCB3b3VsZCBiZSBpbnRlcmVzdGluZyB3aGljaAo+ID4gY29tbWl0IGV4YWN0bHkg
Y2F1c2VzIHRoaXMsIHdlIGFsc28gaGF2ZSBob3N0YXBkIDIuOCBpbiBiZXR3ZWVuLgo+Cj4gSGks
Cj4KPiBJIHN0aWxsIHBsYW4gdG8gdGFnIHYxOS4wNy4wIGZpbmFsIGFuZCB2MTguMDYuNiB0b2Rh
eS4KPiBGcm9tIG15IHNpZGUgZXZlcnl0aGluZyBuZWVkZWQgaXMgaW4gdGhlc2UgcmVsZWFzZXMu
Cj4KPiBIYXVrZQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
