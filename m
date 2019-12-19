Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94427127051
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jDV/SrBZNhnyQgLLuYur+nGr+XpDrTFPnMidLP4PlA=; b=lh3U6egUT3faX/
	Y6S0n2keI6xOa81Fp7eOwctGmaEkRjTyhQywVbLda9Qp347nWJiQ7YnRXAsJ0RWz18fgty2eAskO6
	jMurW3SgW0uN+eje+HeFYT11q+usQnw71gVBQ5fdmNhedPvnyiZtRIS3/5mzBZl1tjSk8dJ6XLsJe
	O/udboNq91AoWOEoQlGN3/nTtiScJMLw161ZnoHZQALPzOiIDNKjacV7pMuMZ6BSwd5lERJ7r/9Fs
	c7St22bMIvAPg0j8qiO/1St35DAeUynOA2x4klxuJhkNKWg1uMTSmANhDnQg3mAOFLS4BgFqDctIH
	0cxKg1+tVl2Dus4nh2tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3vb-0007Cs-T1; Thu, 19 Dec 2019 22:05:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uI-0003c1-Qc
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 621844B93;
 Thu, 19 Dec 2019 23:04:29 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e9cbbe31;
 Thu, 19 Dec 2019 23:04:19 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:16 +0100
Message-Id: <20191219220421.22206-5-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140431_062546_8BC4AE97 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH ucert 4/9] cmake: reindent the file
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW4gb3JkZXIgdG8gbWFrZSB0aGUgaW5kZW50YXRpb24gY29uc2lzdGVudCB3aXRoaW4gdGhlIGZp
bGUuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIENN
YWtlTGlzdHMudHh0IHwgMTQgKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50eHQgYi9D
TWFrZUxpc3RzLnR4dAppbmRleCA0MzZhYmM2ODU3YjMuLjc4OTcwZDI2MzJiNSAxMDA2NDQKLS0t
IGEvQ01ha2VMaXN0cy50eHQKKysrIGIvQ01ha2VMaXN0cy50eHQKQEAgLTIwLDIxICsyMCwyMSBA
QCBGSU5EX0xJQlJBUlkoYmxvYm1zZ19qc29uIE5BTUVTIGJsb2Jtc2dfanNvbikKIEZJTkRfTElC
UkFSWShqc29uIE5BTUVTIGpzb24tYyBqc29uKQogCiBJRihVQ0VSVF9IT1NUX0JVSUxEKQotQURE
X0RFRklOSVRJT05TKC1EVUNFUlRfSE9TVF9CVUlMRCkKKwlBRERfREVGSU5JVElPTlMoLURVQ0VS
VF9IT1NUX0JVSUxEKQogRU5ESUYoKQogCiBJRihVU0VfUlBBVEgpCi1TRVQoQ01BS0VfSU5TVEFM
TF9SUEFUSCAiJHtVU0VfUlBBVEh9IikKLVNFVChDTUFLRV9NQUNPU1hfUlBBVEggMSkKKwlTRVQo
Q01BS0VfSU5TVEFMTF9SUEFUSCAiJHtVU0VfUlBBVEh9IikKKwlTRVQoQ01BS0VfTUFDT1NYX1JQ
QVRIIDEpCiBFTkRJRigpCiAKIEFERF9FWEVDVVRBQkxFKHVjZXJ0IHVjZXJ0LmMgdXNpZ24tZXhl
Yy5jKQogSUYoVUNFUlRfRlVMTCkKLUFERF9ERUZJTklUSU9OUygtRFVDRVJUX0ZVTEwpCi1UQVJH
RVRfTElOS19MSUJSQVJJRVModWNlcnQgJHt1Ym94fSAke2Jsb2Jtc2dfanNvbn0gJHtqc29ufSkK
KwlBRERfREVGSU5JVElPTlMoLURVQ0VSVF9GVUxMKQorCVRBUkdFVF9MSU5LX0xJQlJBUklFUyh1
Y2VydCAke3Vib3h9ICR7YmxvYm1zZ19qc29ufSAke2pzb259KQogRUxTRSgpCi1BRERfREVGSU5J
VElPTlMoLURVQ0VSVF9TVFJJUF9NRVNTQUdFUykKLVRBUkdFVF9MSU5LX0xJQlJBUklFUyh1Y2Vy
dCAke3Vib3h9KQorCUFERF9ERUZJTklUSU9OUygtRFVDRVJUX1NUUklQX01FU1NBR0VTKQorCVRB
UkdFVF9MSU5LX0xJQlJBUklFUyh1Y2VydCAke3Vib3h9KQogRU5ESUYoKQogCiBJTlNUQUxMKFRB
UkdFVFMgdWNlcnQgUlVOVElNRSBERVNUSU5BVElPTiBiaW4pCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
