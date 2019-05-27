Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4BF2AE05
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 07:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBNbs7O0xftkZxntf8UF9vCDOz3NUONY31n550NEHO4=; b=pSFsXtwHPZOMeg
	U+LbBCxRNoophRGOkiMG8UhOQIaQGkPVaj2KoZ7iefuQrrhGaVmklCbU41p/MzvGw85Hg40DFMAZv
	Wk5mEbnpBt99qDJmnjBvKh6ANQqEf6PUzU/15q+gZwSdVGtNL9npEdw1e8oYfaPkJv1j+RrtG5UmM
	FfVCn+6cnMBOyTQYXQAbNOI/qjWQqlJ8vbX8NIZHevhb66b3KNkTu79sfdk+29Gdel0p3JkilDl+n
	oWT2kupt+klf3XeaO6DTidxTqm8Jn9fnNyHMSdIltk/HnaOCkXyAuPSBZIirFuRXW88IG1l7vQ/a0
	ahuOTRXAasdsgxQdqisg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8JI-0005SU-KW; Mon, 27 May 2019 05:36:36 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8JA-0005RT-U5
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 05:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1558935382;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=orhzwLeRL37i/fOG+pLQpiI42K+R0SlVQgILSTawQwI=;
 b=rlodSmLrFhR15UynHVPddSfiV8/Wpn0OWYF3eRod0NmYNpHW9CR1tidK5I3Ng3EzC2
 jhBc6R/gHHfV0FUiVjS7+EqoW/Rw28ohO+BFadrvXTh4k2BWg0UYEijfKmL3HTq3SlRI
 +cg5wc9FrnHGqWNZc/WF8pNbBU9QBUHEh6CzusEQ45thoDG8MHOknhO/3fiqJ3bXSHUi
 VWsdsX1BgarP56uVpEXhE+VzmqKfbcGlK17pw0TyJdiwnD3PnqthMmk814FxmlOyB7z+
 qTQSNFsnbJy8xmMJyWaQodzVYLaMy/NMrZy2Cq+Q0HqPSe/Zh3ggSRM3Hf4dkCxepx3u
 2S4w==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJvSfTerW"
X-RZG-CLASS-ID: mo00
Received: from positron.chronox.de by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id R0373fv4R5aHesZ
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 27 May 2019 07:36:17 +0200 (CEST)
From: Stephan =?ISO-8859-1?Q?M=FCller?= <smueller@chronox.de>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Mon, 27 May 2019 07:36:17 +0200
Message-ID: <4274460.4OE5mLboYo@positron.chronox.de>
In-Reply-To: <20190526124733.GG50588@meh.true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <7720302.cQ4CF4HUsA@positron.chronox.de> <20190526124733.GG50588@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_223629_574400_EF00F81A 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gU29ubnRhZywgMjYuIE1haSAyMDE5LCAxNDo0NzozMyBDRVNUIHNjaHJpZWIgUGV0ciDFoHRl
dGlhcjoKCkhpIFBldHIsCgo+IAo+IGNvdWxkIHlvdSBwbGVhc2UgcG9pbnQgbWUgdG8gdGhhdCBl
bWFpbCB0aHJlYWQ/IFdoYXQncyB5b3VyIHBsYW4gbm93PyBEbyB5b3UKPiBzaW1wbHkgcGxhbiB0
byBtYWludGFpbiBpdCBhcyBvdXQgb2YgdHJlZSBrZXJuZWwgbW9kdWxlIGZvcmV2ZXIgb3IgZG8g
eW91Cj4gcGxhbiB0byBldmVudHVhbGx5IGFkZHJlc3MgdGhlIGNvbW1lbnRzIGxlYWRpbmcgdG8g
dGhlIHJlamVjdCBhbmQgdHJ5IGl0Cj4gYWdhaW4gbGF0ZXI/CgpJIHdpbGwgbWFpbnRhaW4gaXQg
b3V0IG9mIHRyZWUgYXMgaXQgaXMgYW4gaW50ZXJlc3RpbmcgcHJvamVjdCB0byBtZSAKY29uc2lk
ZXJpbmcgdGhhdCBlbnRyb3B5IGFuZCBjcnlwdG9ncmFwaHkgYXJlIG15IGhvYmJpZXMuCgpJZiB5
b3Ugd2FudCB0byBzZWFyY2ggZm9yIHRoZSBkaXNjdXNzaW9ucyBhcyB0aGVyZSBhcmUgbWFueSBj
b25zaWRlcmluZyB0aGUgCmZhY3QgdGhhdCBJIHN1cHBsaWVkIHNldmVyYWwgdmVyc2lvbnMsIHNl
YXJjaCBmb3IgIkxpbnV4IC9kZXYvcmFuZG9tIC0gYSBuZXcgCmFwcHJvYWNoIi4KCkNpYW8KU3Rl
cGhhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
