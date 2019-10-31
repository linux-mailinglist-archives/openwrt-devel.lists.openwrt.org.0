Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE56EAC90
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 10:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsJadbdw6EgSth6lyzOGHNMoJZiWanvvJvSi/GAjPJE=; b=VqChlxoFoql5iu
	sCoWI6DcM/WZ1dcHgmGHeOcHgZtL8b48lbHS14dWoRbsh7q9YdIUENrj//4e3VPHNbo9O9iQmnQBF
	HIWfj6NP3XLO82RnoZjkAgZTqvU4W8pvoaLAiki4w4Gatake28RYZLLimyc/moDZFtFOADC35C8F8
	YTcq4rGjI2yuRTY30+YWKLwQr7LwOV8FtLofxp6g5LFQyht/YGHb1JvE867Srk9w/7U3BRz4yCeOd
	Nsm+xx3FmgMGJ+3solLYEoTJ7eyupvWd2/WE3TxweprTQ1TuPZflPa7gE7dU9fJmB3n5OfOJeimga
	V/8TKVbmp0zvGk1CykXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6qB-0005zY-RF; Thu, 31 Oct 2019 09:34:03 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6q2-0005yf-Mu
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 09:33:56 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:286:4947:c09a:74ff:fe7f:b715])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x9V9XmNZ018948
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 31 Oct 2019 10:33:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1572514429; bh=FDfyotZT/Fbu2NCUUcvYfih9qvM3J+BJOOFm6KKCHvM=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=c7lVTkmj93gYXD9LuShuewKJ/nSneLfcZBcHMvxPUtZfsX8amY6uE8ZQbrBd90UHx
 Nd59A4/5+kO0Qe4rQFbhRtZzCI7t9P3FXyNe0lGzUMjh6B8+xEjP9EMMOI5PxSF0Ol
 kxtgYnS6AIxTHJr0xs/LWRK0H2sCTUoVtuNcHubc=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iQ6pr-0002CZ-Hq; Thu, 31 Oct 2019 10:33:43 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: John Crispin <john@phrozen.org>
Organization: m
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
Date: Thu, 31 Oct 2019 10:33:43 +0100
In-Reply-To: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org> (John
 Crispin's message of "Tue, 29 Oct 2019 06:37:24 +0100")
Message-ID: <87tv7p5keg.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_023355_256234_EAF07862 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cml0ZXM6Cgo+IEhpLAo+IHNob3VsZCB3
ZSB1c2UgdjUuNCBhcyBvdXIgbmV4dCBrZXJuZWwgPwoKSGVsbG8gSm9obiEKCkkgYW0gc3RpbGwg
c3RydWdnbGluZyB0byB1bmRlcnN0YW5kIGhvdyB0aGUgcHJvamVjdCBtYWtlcyByZWxlYXNlCmRl
Y2lzaW9ucy4gIEkgZG9uJ3QgdGhpbmsgeW91ciBxdWVzdGlvbiBtYWtlcyBzZW5zZSB3aXRob3V0
IGNvbnNpZGVyaW5nCnRhcmdldCByZWxlYXNlIGRhdGVzLCBhdCBsZWFzdCBpbiBhIHllYXJseSBy
ZXNvbHV0aW9uLCBnaXZlbiB0aGUgbWFzc2l2ZQphbW91bnQgb2Ygd29yayBpbnZvbHZlZCB3aXRo
IHN3aXRjaGluZyBrZXJuZWwgdmVyc2lvbnMuCgpTbyBteSBxdWVzdGlvbiBpczogSXMgaXQgcmVh
bGlzdGljIHRvIGV4cGVjdCBhbiBPcGVuV3J0IHJlbGVhc2Ugd2l0aAp2NS40IG5leHQgeWVhcj8K
CkJlY2F1c2UgaWYgaXQgaXNuJ3QsIHRoZW4gdjUuNCBpcyByZWFsbHkgYSB3YXN0ZSBvZiB0aW1l
IElNSE8uIFlvdQpzaG91bGQgdGFyZ2V0IHRoZSBuZXh0IGxvbmd0ZXJtIGtlcm5lbCBhZnRlciB2
NS40IGluc3RlYWQgZm9yIHRoZSBmaXJzdAoyMDIxIHJlbGVhc2UuCgpBbmQgb2YgY291cnNlLCBp
ZiB5b3UgdGhpbmsgYSAyMDIwIHJlbGVhc2Ugd2l0aCB2NS40IGlzIHJlYWxpc3RpYywgdGhlbgp0
aGVyZSdzIGFuIG9wZW4gcXVlc3Rpb24gb24gd2hhdCB0byBkbyB3aXRoIHY0LjE5LiAgQXJlIHR3
byBPcGVuV3J0CnJlbGVhc2VzIG5leHQgeWVhciBsaWtlbHkvcG9zc2libGU/ICBJZiBub3QsIHRo
ZW4gdjUuNCBzaG91bGQgcHJvYmFibHkKcmVwbGFjZSB2NC4xOSBhcyB0aGUgY3VycmVudCB0YXJn
ZXQga2VybmVsIGFzIHNvb24gYXMgcG9zc2libGUuCgpZZXMsIEkga25vdyB3aGF0IHlvdXIgbWVl
dGluZyBtaW51dGVzIHNheXMuICBCdXQgdHdvIHJlbGVhc2VzIGluIDIwMTkgaXMKb2J2aW91c2x5
IG5vdCBnb2luZyB0byBoYXBwZW4uIEFuZCBwZXJzb25hbGx5IEkgZG9uJ3Qgc2VlIGhvdyB0aGF0
J3MKc3VkZGVubHkgZ29pbmcgdG8gY2hhbmdlIGZvciAyMDIwIHVubGVzcyB5b3UgZG8gc29tZXRo
aW5nIGRyYXN0aWMgdG8Kc2ltcGxpZnkgdGhlIHJlbGVhc2UgcHJvY2Vzcy4gWWVzLCB0aGF0IG1l
YW5zIGxvd2VyaW5nIHRoZSBzdGFuZGFyZHMuCk1heWJlIG1ha2luZyByZWxlYXNlcyB0aGF0IHdv
bid0IGJlIG1haW50YWluZWQsIGFuZCB0aGVyZWZvcmUgZG9uJ3QgbmVlZAp0byBiZSAiZnV0dXJl
IHByb29mIj8KCgpCasO4cm4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
