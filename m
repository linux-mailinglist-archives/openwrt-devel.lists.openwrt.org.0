Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09797127021
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 22:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rS06k/qV/VcQE+KNPnZ8p9jh40COxHQhnd+SPPg2KSU=; b=d7u96W3hrnaxUW
	pubu59ia8JR/cDZWQZ1KkmFl7F/WukYINrNmZfu4BQLbgpyyNSOqilzso+JuYeZyBFFVjfNZ2nnws
	TvL7cmdPWmw4eiuSZf21tD3rrURK06bTfIaohap+eZQl9V1sIlK07qVo0JqRUc+idF6srhNkNJp4U
	AFY37ibA45N6GYSgHuXkTD51BmiHrpa9lomXkENVma8Wkm9OoeyLmADTFAxLqvbNT6BCx4EaYEpd2
	DRoagxPvnOczJ1BPag/OlxI2byNmguUffatIyKjgNzrKd50RfnFW3QlVmTcDb4VPrtvoAHX24Io6O
	j7D8XvEt3l/nbLTPMx8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3pX-0001S8-02; Thu, 19 Dec 2019 21:59:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3om-0000qt-KF
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 44CFD4B42;
 Thu, 19 Dec 2019 22:58:46 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 18802f00;
 Thu, 19 Dec 2019 22:58:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:17 +0100
Message-Id: <20191219215836.21773-2-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135848_835094_0C642CD1 
X-CRM114-Status: UNSURE (   5.92  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 01/20] cmake: use extra compiler
 warnings only on gcc6+
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

Z2NjIHZlcnNpb24gNC44LjQgKFVidW50dSAxNC4wNCkgYW5kIC1XZXh0cmEgcHJvZHVjZXMgZm9s
bG93aW5nOgoKIGpzb25fc2NyaXB0LmM6MTI0OjM6IGVycm9yOiBtaXNzaW5nIGluaXRpYWxpemVy
IGZvciBmaWVsZCAnbmFtZScgb2YgJ3N0cnVjdCBibG9ibXNnX3BvbGljeScgWy1XZXJyb3I9bWlz
c2luZy1maWVsZC1pbml0aWFsaXplcnNdCgpSZXBvcnRlZC1ieTogSm9uYXMgR29yc2tpIDxqb25h
cy5nb3Jza2lAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIENNYWtlTGlzdHMudHh0IHwgNyArKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50
eHQgYi9DTWFrZUxpc3RzLnR4dAppbmRleCBiODBkNTUxYzExMmYuLmRhN2QwM2M3ZmMyMSAxMDA2
NDQKLS0tIGEvQ01ha2VMaXN0cy50eHQKKysrIGIvQ01ha2VMaXN0cy50eHQKQEAgLTMsNyArMywx
MiBAQCBJTkNMVURFKENoZWNrTGlicmFyeUV4aXN0cykKIElOQ0xVREUoQ2hlY2tGdW5jdGlvbkV4
aXN0cykKIAogUFJPSkVDVCh1Ym94IEMpCi1BRERfREVGSU5JVElPTlMoLU9zIC1XZXh0cmEgLVdh
bGwgLVdlcnJvciAtLXN0ZD1nbnU5OSAtZzMgLVdtaXNzaW5nLWRlY2xhcmF0aW9ucyAtV25vLXVu
dXNlZC1wYXJhbWV0ZXIpCisKK0FERF9ERUZJTklUSU9OUygtV2FsbCAtV2Vycm9yKQorSUYoQ01B
S0VfQ19DT01QSUxFUl9WRVJTSU9OIFZFUlNJT05fR1JFQVRFUiA2KQorCUFERF9ERUZJTklUSU9O
UygtV2V4dHJhKQorRU5ESUYoKQorQUREX0RFRklOSVRJT05TKC1PcyAtc3RkPWdudTk5IC1nMyAt
V21pc3NpbmctZGVjbGFyYXRpb25zIC1Xbm8tdW51c2VkLXBhcmFtZXRlcikKIAogT1BUSU9OKEJV
SUxEX0xVQSAiYnVpbGQgTHVhIHBsdWdpbiIgT04pCiBPUFRJT04oQlVJTERfRVhBTVBMRVMgImJ1
aWxkIGV4YW1wbGVzIiBPTikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
