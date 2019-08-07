Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD9484EBC
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 16:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnCT63iOvNJKXYv6O1av+pP553Qem7mCXYIrMEpYo6E=; b=cEuJgJy5mEtMCq
	J+ElxB5JIJnuUV4TxKxZE64mHOIebAp0m+35xRbv620m0BdAtoz8Qe+mSTT9rgansPReM90h5/ILo
	ORe4Gs7yRyJ3AE765nU+k9FK4nHWMPZOmRoHmvX023WPrKYvkQTdvkUYkpggZ2WQq7UICVGQZenRZ
	4ogb7rXg+Bhj094cKw1d0s32loJXNuLR1w8+8LM6sab+wH4QAmHynHPzvwOEtQJt/UAeS/cez4lpS
	0n8kzt+MZLqA8vjOX247BDKUX14Ak4vPBHHV7ImoG5o+AXCUuKE1qRsrg2VcgUgoCmpbZAZfMQUqy
	sLGTj8NyyM00kjnDkRmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMvV-00040M-Vh; Wed, 07 Aug 2019 14:28:31 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMvB-000400-KB
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 14:28:11 +0000
Received: by mail-ot1-x341.google.com with SMTP id s20so39533809otp.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Rxr0UOuy63psmOJT1LD4CblUm6gdbS9QMCGjS2hM2rU=;
 b=BLfPv9RsZlnExyTV4ZfIfXPNqDda068sv7HwnP4kyGOhnEmArOvMhSWVEpVYHnEdg3
 xH74+HllkeZ0YwEgxbMfHLCR8Y9R6Fxq/FD9t9XiWldjPWxicPtacqYupFA0mIpBoqI6
 7d/lmGZ7VBQ6Gc4Ys/p8rzyY7sNGpuLuGAKSoYtZGrGSe6KJ5HrzVXe9TY3WR+wb9RBz
 2b0O+/BirKd7qozNFZYaORCCrRmbAwyImzPcHGf5nWRbHQ9gp7dfQTMKy/IxNYw/kdpl
 thICfjTo2VeKO+WCIK3Rne45EfxmP9fWEcMzRCwAAM/6Wwc+LFjS0AqvjiDr5sbg2pT1
 NitA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Rxr0UOuy63psmOJT1LD4CblUm6gdbS9QMCGjS2hM2rU=;
 b=gwLHmVeD8saAgz1HR5h+bpkQl4ocEmAjbLL/4c1M7g55gC2fJcWgGcrVtC5fDJLnfi
 q5Z6/N2oi6DVs1bCYd3gyNdZxXwn2Cd6ZfvLaVgljJuXUm+Ew77jhMyloOjrbLpElm7I
 Sj/a7Srw0hhFoKaPkkL0ZuHQaLnA72dVZWmNPLOmBEs3fxCC0KOvXKnVErRGu6kpo/BF
 JyZFaWdTQqd/S/pDiUipgv+Cw/0SVhXhas+tWrClTwAswi+n0SZfyXCsWkBo92efPyJE
 jIpso/9X39HbIsqN8SPaFfRyg1NgJR1IFQdmK9S0kypeNLbngAiFexkjZ+9SDmDWK+GW
 O0RA==
X-Gm-Message-State: APjAAAVhCg7wxCoXtc/Ct1g3dCXFdZFC6BpTEwRCrMEF0psuVm4DR0ak
 wEljhQg0RIIAsNyv9LKokt+6Quwif24ZT8I6W8o=
X-Google-Smtp-Source: APXvYqwyaOlrrx8sGqmNTrDRMtH8XbfHC74cBmpBko4HQVD/CbtoCIDj5KzRhbtx5bO/qD0G5VU2vyJf4kQoV5r3/tc=
X-Received: by 2002:a6b:ea0f:: with SMTP id m15mr9805511ioc.300.1565188088309; 
 Wed, 07 Aug 2019 07:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190727022302.12656-1-champetier.etienne@gmail.com>
 <20190801085107.GK74752@meh.true.cz>
 <CAOdf3gp-oR2B6qy-qSnxAFWdLfQ+W-+zxrjixc+EGc=6swepgA@mail.gmail.com>
 <20190801183928.GM74752@meh.true.cz>
 <CAOdf3grZpCY4acG3Eq2vDUb1qW=RNSTFfZUpnuMU_ZmxKOp-rw@mail.gmail.com>
In-Reply-To: <CAOdf3grZpCY4acG3Eq2vDUb1qW=RNSTFfZUpnuMU_ZmxKOp-rw@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Wed, 7 Aug 2019 07:27:56 -0700
Message-ID: <CAOdf3gr49t15XUrxwkT=pQYbF6n4FrFN7M7vtZ8=070t7YSFbw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_072809_667397_58A52061 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] [RFC] kernel: disable EAP local hack
 when using group_fwd_mask
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCkxlIGpldS4gMSBhb8O7dCAyMDE5IMOgIDEyOjUxLCBFdGllbm5lIENoYW1wZXRp
ZXIKPGNoYW1wZXRpZXIuZXRpZW5uZUBnbWFpbC5jb20+IGEgw6ljcml0IDoKPgo+IEhpIFBldHIs
Cj4KPiBMZSBqZXUuIDEgYW/Du3QgMjAxOSDDoCAxMTozOSwgUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4gYSDDqWNyaXQgOgo+ID4KPiA+IEV0aWVubmUgQ2hhbXBldGllciA8Y2hhbXBldGll
ci5ldGllbm5lQGdtYWlsLmNvbT4gWzIwMTktMDgtMDEgMDc6MjM6MThdOgo+ID4KPiA+ID4gSWYg
dGhlIGZpeCB3YXMgdG8gd29ya2Fyb3VuZCBhIGNsaWVudCBidWcgd2UgbWlnaHQgd2FudCB0byBr
ZWVwIGl0LAo+ID4KPiA+IEFjdHVhbGx5IHdlIGRvbid0IGtub3cgaWYgaXQgd2FzbnQgZml4ZWQg
YWxyZWFkeSB1cHN0cmVhbSBhcyBSYWZhxYIgc3VnZ2VzdGVkCj4gPiBpbiBoaXMgb2xkIHJlbW92
YWwgcGF0Y2guCj4gPgo+ID4gPiBlbHNlIG1heWJlIHdlIGNvdWxkIHJld29yayBpdCBhbmQgYWRk
IGEgd2Fybl9vbmNlIGlmIHRoaXMgaGFjayBwcmV2ZW50Cj4gPiA+IGEgRUFQIGZyYW1lIGZyb20g
YmVpbmcgZm9yd2FyZGVkCj4gPgo+ID4gVGhpcyB3YXJuX29uY2Ugd291bGQgaGF2ZSBwcm9iYWJs
eSBzYXZlZCBzb21lIHRpbWUgYWxyZWFkeS4KPiA+Cj4gPiA+ICdkaXNhYmxlLWVhcC1sb2NhbC1o
YWNrJyB0byBlbmFibGUvZGlzYWJsZSB0aGlzIGhhY2ssIHdoYXQgZG8geW91Cj4gPiA+IHByZWZl
ciA/Cj4gPgo+ID4gSSB3b3VsZCBwcmVmZXIgdG8gcmVtb3ZlIHRoaXMgcGF0Y2ggZm9yIDQuMTkg
a2VybmVsIHRvIGZpbmQgb3V0IGlmIGl0J3Mgc3RpbGwKPiA+IG5lZWRlZC4KPgo+IHlvdSBtZWFu
IGFsbCB2ZXJzaW9ucyBpbiBtYXN0ZXIgKDQuMTkvNC4xNC80LjkpIG9yIHJlYWxseSBvbmx5IDQu
MTkgPwo+Cj4gPiBBbmQgaWYgaXQncyBuZWVkZWQsIHRoZW4gaXQgd291bGQgbWFrZSBzZW5zZSB0
byBkaXNjdXNzIHRoaXMgdXNlIGNhc2UKPiA+IHdpdGggdXBzdHJlYW0gYW5kIG1ha2UgaXQgb2Zm
aWNpYWwgZmVhdHVyZS4KPgo+IEkgaGF2ZSBhIHNtYWxsIHRvb2wvT3BlbldydCBwYWNrYWdlCj4g
KGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L3BhY2thZ2VzL2Jsb2IvbWFzdGVyL25ldC9waGFu
dGFwL01ha2VmaWxlKQo+IHRoYXQgSSdtIHByZXNlbnRpbmcgYXQgREVGIENPTiBpbiBhIHdlZWss
IGFuZCB3b3VsZCByZWFsbHkgbG92ZSB0bwo+IGhhdmUgYSB3YXkgdG8gZGlzYWJsZSB0aGlzIGhh
Y2ssCj4gc28gSSBkb24ndCBoYXZlIHRvIHRlbGwgcGVvcGxlIHRoYXQgd2FudCB0byB0ZXN0IGl0
IHRoYXQgdGhleSBoYXZlIHRvCj4gcmVidWlsZCBPcGVuV3J0Lgo+IFNvIEknbSB3aWxsaW5nIHRv
IHdvcmsgb24gYW55IHNtYWxsIHBhdGNoIHRoYXQgd29ya2Fyb3VuZCBteSBpc3N1ZSBhbmQKPiBz
ZWVtcyByZWFzb25hYmxlIHRvIGV2ZXJ5b25lIGluIGEgc2hvcnQgdGltZS1mcmFtZSA7KQo+Cj4g
Pgo+ID4gTGV0J3Mgd2FpdCBmb3IgRmVsaXgncyBpbnB1dCBhcyB3ZWxsLgoKTGFzdCBlbWFpbCBm
cm9tIEZlbGl4IHRoYXQgSSBzZWUgaXMgZnJvbSBqdW5lIDEyLCBzbyBJIHNlbnQgYW4gUkZDdjIK
KGtlcm5lbDogYWRkIGRpc2FibGVfZWFwX2hhY2sgc3lzZnMgYXR0cmlidXRlKSBmb3IgY29uc2lk
ZXJhdGlvbgoKPgo+IEknbGwgYWxzbyB0cnkgdG8gZGlnIHNvbWUgbW9yZSBpbiB0aGUgb2xkIHJl
cG8gJiBidWcgdHJhY2tlciB0byBzZWUgaWYKPiB0aGVyZSBpcyBtb3JlIGluZm8gdGhhbiBpbiB0
aGUgcGF0Y2ggJiBlbWFpbAo+Cj4gRXRpZW5uZQo+Cj4gPgo+ID4gLS0geW5lenoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
