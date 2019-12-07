Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB5D115FCD
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 00:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP+1A40gmiU8veb/TeE4qx5Cox4RIe4bBFCMZ4FbFqg=; b=PQtMkwge90jElk
	36SqTqN4QAYs0cHvFDzvSPOIe67J9r80EHEjp3zdw00/RZKniYALcpI1PxtrJlhXTxYijlpb8TU/T
	BPB0ouFIGOCAlBF+Su+4p1+Y6EnJxv9sZNVDl2OJw1+Hs/1d7BEEaZ5KIcjQ53XgUPH/Wjiwl2qmf
	lVmTq16WD7lv9afr5IEGzTz9q/ofl3sxkBi288gjNMVz3sM6NyUVWup9R4jXP5OvSzWa5OUAcIzGL
	ExJ8MGmuYSls91JI+OiCkQTRyTqQuZDYqTGgGHgSoQkOqOULiuE9ZyJu+xz5BH9feKt9kNvGizBA6
	jsd1maV3B2Om1Yuwg3VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idj6l-0003Ib-IG; Sat, 07 Dec 2019 23:03:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idj6Q-00037D-Ah
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 23:03:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 40BB441A3;
 Sun,  8 Dec 2019 00:03:04 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id dfd873dc;
 Sun, 8 Dec 2019 00:02:54 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:52:57 +0100
Message-Id: <20191207225257.14135-5-ynezz@true.cz>
In-Reply-To: <20191207225257.14135-1-ynezz@true.cz>
References: <20191207225257.14135-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_150306_537486_D2B37FE8 
X-CRM114-Status: UNSURE (   5.73  )
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
Subject: [OpenWrt-Devel] [PATCH uci 5/5] cmake: add more hardening compiler
 flags
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

SW4gb3JkZXIgdG8gc3BvdCBwb3NzaWJsZSBpc3N1ZXMgd2l0aCBkaXJlY3QgaW1wYWN0IG9uIHNl
Y3VyaXR5IGR1cmluZwpRQSBvbiBDSSAoR0NDIHZlcnNpb24gNiBhbmQgaGlnaGVyKS4KClJlZjog
aHR0cHM6Ly9kZXZlbG9wZXJzLnJlZGhhdC5jb20vYmxvZy8yMDE4LzAzLzIxL2NvbXBpbGVyLWFu
ZC1saW5rZXItZmxhZ3MtZ2NjLwpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIENNYWtlTGlzdHMudHh0IHwgMTEgKysrKysrKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvQ01ha2VM
aXN0cy50eHQgYi9DTWFrZUxpc3RzLnR4dAppbmRleCA5MmFkZjRhNDcxMjEuLmRhNGFjNjhjMDEz
OSAxMDA2NDQKLS0tIGEvQ01ha2VMaXN0cy50eHQKKysrIGIvQ01ha2VMaXN0cy50eHQKQEAgLTMs
OCArMywxNSBAQCBjbWFrZV9taW5pbXVtX3JlcXVpcmVkKFZFUlNJT04gMi42KQogUFJPSkVDVCh1
Y2kgQykKIAogU0VUKENNQUtFX1NIQVJFRF9MSUJSQVJZX0xJTktfQ19GTEFHUyAiIikKLUFERF9E
RUZJTklUSU9OUygtT3MgLVdhbGwgLVdlcnJvciAtV2V4dHJhIC0tc3RkPWdudTk5IC1nMyAtSS4g
LURVQ0lfUFJFRklYPSIke0NNQUtFX0lOU1RBTExfUFJFRklYfSIpCi1BRERfREVGSU5JVElPTlMo
LVduby11bnVzZWQtcGFyYW1ldGVyKQorCitBRERfREVGSU5JVElPTlMoLVdhbGwgLVdlcnJvcikK
K0lGKENNQUtFX0NfQ09NUElMRVJfVkVSU0lPTiBWRVJTSU9OX0dSRUFURVIgNikKKwlBRERfREVG
SU5JVElPTlMoLVdleHRyYSAtV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uKQor
CUFERF9ERUZJTklUSU9OUygtV2Zvcm1hdCAtV2Vycm9yPWZvcm1hdC1zZWN1cml0eSAtV2Vycm9y
PWZvcm1hdC1ub25saXRlcmFsKQorRU5ESUYoKQorQUREX0RFRklOSVRJT05TKC1PcyAtc3RkPWdu
dTk5IC1nMyAtV21pc3NpbmctZGVjbGFyYXRpb25zIC1Xbm8tdW51c2VkLXBhcmFtZXRlcikKK0FE
RF9ERUZJTklUSU9OUygtRFVDSV9QUkVGSVg9IiR7Q01BS0VfSU5TVEFMTF9QUkVGSVh9IikKKwog
CiBPUFRJT04oVUNJX0RFQlVHICJkZWJ1Z2dpbmcgc3VwcG9ydCIgT0ZGKQogT1BUSU9OKFVDSV9E
RUJVR19UWVBFQ0FTVCAidHlwZWNhc3QgZGVidWdnaW5nIHN1cHBvcnQiIE9GRikKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
