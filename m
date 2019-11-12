Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E07EF92BF
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 15:35:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mv8xXpjp2Wf2qtGdYGoWkvEoo0rzY/niEaAT1l9zU4k=; b=nhMA0+AwQydaYB
	nvlmYHU10Ah2DEEnQ7whpTR7qd1o2UbO6Wx2T6oJI+7K1DhnZlGZrOH28cIGA8cAMsMWbHPO5h0MM
	29Pe4n81Fb4QkyDQQrFZIp/5Kp37Fpy2O5auVTvrL+0YqqVky9reHfRFHvpAztr4Fww5onxQ0qFtY
	DW3yKY4cGa0tfxGlgzJM/WVHzi6gR5a/xNn5cST6WIqUC7bwMIuTZYJon9Q1syM4FJwxEtlEypcSQ
	W0y6l29Rkv+W8pqwcL+geiwWhosY0lIuhwTJbn6icj2vXvvZ36M2e2RTw5YML/xaH0TqLGQho/c/x
	2SWvKVdb9ALyEMPqsuvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXG0-0001WI-GR; Tue, 12 Nov 2019 14:35:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXEf-0000BJ-MI
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 14:33:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 85F1432FF;
 Tue, 12 Nov 2019 15:33:34 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8511dfa3;
 Tue, 12 Nov 2019 15:33:24 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 12 Nov 2019 15:33:28 +0100
Message-Id: <20191112143328.25657-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_063337_904218_7C35B661 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH fwtool] cmake: use extra compiler warnings
 only on gcc6+
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

Z2NjIHZlcnNpb24gNC44LjUgMjAxNTA2MjMgKFJlZCBIYXQgNC44LjUtMzkpIGFuZCAtV2V4dHJh
IHByb2R1Y2VzCmZvbGxvd2luZzoKCiBmd3Rvb2wuYzoyODg6OTogZXJyb3I6IG1pc3NpbmcgaW5p
dGlhbGl6ZXIgZm9yIGZpZWxkICdjdXInIG9mICdzdHJ1Y3QgZGF0YV9idWYnIFstV2Vycm9yPW1p
c3NpbmctZmllbGQtaW5pdGlhbGl6ZXJzXQogIHN0cnVjdCBkYXRhX2J1ZiBkYnVmID0ge307CiAg
ICAgICAgIF4KIGZ3dG9vbC5jOjM3Ojg6IG5vdGU6ICdjdXInIGRlY2xhcmVkIGhlcmUKICBjaGFy
ICpjdXI7CiAgICAgICAgXgoKUmVmOiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0
L2NvbW1pdC80YmE4ZjdiMWVmMWU0YzA2MDcxODVhNDFjMDZiNTE5MjhjNjI1ZDhiI2NvbW1pdGNv
bW1lbnQtMzU5MDY1MjYKUmVmOiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwv
b3BlbndydC1kZXZlbC8yMDE5LU5vdmVtYmVyLzAyMDAzOS5odG1sClNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogQ01ha2VMaXN0cy50eHQgfCA2ICsrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL0NNYWtlTGlzdHMudHh0IGIvQ01ha2VMaXN0cy50eHQKaW5kZXggZGZlNjA0NWZiNGU4
Li4wYzI2OTJhMmE2ZWQgMTAwNjQ0Ci0tLSBhL0NNYWtlTGlzdHMudHh0CisrKyBiL0NNYWtlTGlz
dHMudHh0CkBAIC0zLDkgKzMsMTMgQEAgQ01BS0VfTUlOSU1VTV9SRVFVSVJFRChWRVJTSU9OIDMu
MCkKIFBST0pFQ1QoZnd0b29sIEMpCiBJTkNMVURFKEdOVUluc3RhbGxEaXJzKQogCi1BRERfREVG
SU5JVElPTlMoLVdhbGwgLVdlcnJvciAtV2V4dHJhIC1Xbm8tdW51c2VkLXBhcmFtZXRlcikKK0FE
RF9ERUZJTklUSU9OUygtV2FsbCAtV2Vycm9yKQogQUREX0VYRUNVVEFCTEUoZnd0b29sIGZ3dG9v
bC5jKQogCitJRihDTUFLRV9DX0NPTVBJTEVSX1ZFUlNJT04gVkVSU0lPTl9HUkVBVEVSIDYpCisJ
QUREX0RFRklOSVRJT05TKC1XZXh0cmEgLVduby11bnVzZWQtcGFyYW1ldGVyKQorRU5ESUYoKQor
CiBJRihVTklUX1RFU1RJTkcpCiAJRU5BQkxFX1RFU1RJTkcoKQogCUFERF9TVUJESVJFQ1RPUlko
dGVzdHMpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
