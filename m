Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D75DFCD8
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 06:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CG03Pz6Cxb8HfexYPLaN4zEo921eEmeD5orlkB/cREA=; b=ayIL6u+qFBZ7RXpnKLbDHxtYQz
	Mta9zbRqtS/z374aiWk02gwqNBmw2+PXmyk+i+xPUPdmpYaW20lF7pv9d/mmnhvkhcl48y0VZ/ozJ
	sijLAiUVRE2oEIiafANOxp1EvdJe2Fuom23PzJgVnpwDklkKtLXtxTWasA546Fy8yNnN2x2/qRTZj
	TJdAZiyupyVnLS/MfvRRetYotZ6aPjrDDIaH22/J6w3yQBwz+VJtVLY0pWqVvclkMbg5a8BUEVgCn
	9I4u1ZQzSZKnkv/ttO2E9mmGnA6mniznfOpZcEgQ4diaOxEcke6naFtk/ZyqwBo146mvnXXCyrn+3
	bJOtYNmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMm6x-00035G-5E; Tue, 22 Oct 2019 04:49:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMm6o-0002vc-11
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 04:49:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2A0464043;
 Tue, 22 Oct 2019 06:49:24 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 016f4e0c;
 Tue, 22 Oct 2019 06:49:14 +0200 (CEST)
Date: Tue, 22 Oct 2019 06:49:14 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191022044914.GB76509@meh.true.cz>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
 <20191021125924.37223-2-yszhou4tech@gmail.com>
 <20191022042614.GA76509@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022042614.GA76509@meh.true.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_214926_221070_D4456DCF 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH rpcd v2 6/6] main: exec_self: make clang
 analyzer happy
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, jo@mein.io
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMTAtMjIgMDY6MjY6MTRdOgoKPiBZ
b3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4gWzIwMTktMTAtMjEgMTI6NTk6MjRd
Ogo+IAo+IGFsbW9zdCBoYXBweToKPiAKPiAgbWFpbi5jOjY1OjE6IHdhcm5pbmc6IFBvdGVudGlh
bCBsZWFrIG9mIG1lbW9yeSBwb2ludGVkIHRvIGJ5ICdhcmdzJwo+IAo+IGRpZmYgLS1naXQgYS9t
YWluLmMgYi9tYWluLmMKPiBpbmRleCAxMmNiNGM1YzcyMGMuLjhiMTE0MThmMWMwOSAxMDA2NDQK
PiAtLS0gYS9tYWluLmMKPiArKysgYi9tYWluLmMKPiBAQCAtNjIsNiArNjIsNyBAQCBleGVjX3Nl
bGYoaW50IGFyZ2MsIGNoYXIgKiphcmd2KQo+ICAKPiAgCXNldGVudigiUlBDX0hBTkdVUCIsICIx
IiwgMSk7Cj4gIAlleGVjdihjbWQsIChjaGFyICogY29uc3QgKilhcmdzKTsKPiArCWZyZWUoYXJn
cyk7Cj4gIH0KClNvIEkgd2VudCBhaGVhZCBhbmQgSSd2ZSBwdXQgc29tZSBtb3JlIGZpeGVzIG9u
IHRvcCBvZiB5b3Vyc1sxXSBhbmQgaXQncyBhbGwKZ3JlZW4gbm93WzJdLiBJJ3ZlIG9ubHkgY29t
cGlsZWQgdGVzdCBpdCwgc28gdGhlIHF1ZXN0aW9uIGlzLCBpZiBpdCdzIHN0aWxsCmdvaW5nIHRv
IHdvcmsgOi0pCgoxLiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1ycGNkL2NvbW1p
dHMveXN6aG91NHRlY2gvbWVtb3J5LWlzc3Vlcy1maXhlcwoyLiBodHRwczovL2dpdGxhYi5jb20v
eW5lenovb3BlbndydC1ycGNkL3BpcGVsaW5lcy85MDQzMjMzMAoKLS0geW5lenoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
