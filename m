Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4E1490ED
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYPcJirc7qCjh73k2TS/JilykXnQOZhNDiDl7I01tjg=; b=rY874lDnTPaUOo
	/TG2ziXCfmXMtDDUFoS7QxUha8GKPWKGRHp0WiJwowfR29mSqmzzHKQ/FBgYrl+QFwcVmwUN7pKD6
	kLglXu/D5WZX831NqWS6zlHP6+yKxDlSCgbdmtdCXHNOl0SZPZsoYWDIPNh09iun4xHrCVseTUywH
	pcmpvjkW54uqTs0buA/ZSieuabOpL6tNVer7LVI098fFqUdDIQQlL5W/RcObIUfbW10caYg+PyxQI
	VEPv2KAQmBLGRMQKbSJnMUaMEMEVUN7nJnh16O5wnhHkINBSfv1QEgh4abr9QwOw/S7vHzAH2wyl3
	ZkSsb/43EI5V2DvdDCCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxx2-00075v-SB; Mon, 17 Jun 2019 20:10:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxwB-0006Hc-9w
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:09:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E11704FB2;
 Mon, 17 Jun 2019 22:09:04 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 16a8ce40;
 Mon, 17 Jun 2019 22:09:02 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 22:08:51 +0200
Message-Id: <1560802136-4157-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560802136-4157-1-git-send-email-ynezz@true.cz>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130907_511974_BCB5F1CE 
X-CRM114-Status: UNSURE (   7.84  )
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
Subject: [OpenWrt-Devel] [PATCH 1/6] tools/b43-tools/b43-fwsquash: convert
 to Python 3 with 2-to-3
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

TGV0J3MgY29udmVydCB0aGUgc2NyaXB0IHRvIFB5dGhvbiAzLgoKU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0b29scy9iNDMtdG9vbHMvZmlsZXMvYjQz
LWZ3c3F1YXNoLnB5IHwgMTYgKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90b29scy9iNDMtdG9vbHMv
ZmlsZXMvYjQzLWZ3c3F1YXNoLnB5IGIvdG9vbHMvYjQzLXRvb2xzL2ZpbGVzL2I0My1md3NxdWFz
aC5weQppbmRleCAyOTQ2ZDdjM2MzMjQuLjVkOTU1YjlkOWMzZSAxMDA3NTUKLS0tIGEvdG9vbHMv
YjQzLXRvb2xzL2ZpbGVzL2I0My1md3NxdWFzaC5weQorKysgYi90b29scy9iNDMtdG9vbHMvZmls
ZXMvYjQzLWZ3c3F1YXNoLnB5CkBAIC0xLDQgKzEsNCBAQAotIyEvdXNyL2Jpbi9lbnYgcHl0aG9u
CisjIS91c3IvYmluL2VudiBweXRob24zCiAjCiAjIGI0MyBmaXJtd2FyZSBmaWxlIHNxdWFzaGVy
CiAjIFJlbW92ZXMgdW5uZWNlc3NhcnkgZmlybXdhcmUgZmlsZXMKQEAgLTEyLDcgKzEyLDcgQEAg
aW1wb3J0IHN5cwogaW1wb3J0IG9zCiAKIGRlZiB1c2FnZSgpOgotCXByaW50KCJVc2FnZTogJXMg
UEhZVFlQRVMgQ09SRVJFVlMgL3BhdGgvdG8vZXh0cmFjdGVkL2Zpcm13YXJlIiAlIHN5cy5hcmd2
WzBdKQorCXByaW50KCgiVXNhZ2U6ICVzIFBIWVRZUEVTIENPUkVSRVZTIC9wYXRoL3RvL2V4dHJh
Y3RlZC9maXJtd2FyZSIgJSBzeXMuYXJndlswXSkpCiAJcHJpbnQoIiIpCiAJcHJpbnQoIlBIWVRZ
UEVTIGlzIGEgY29tbWEgc2VwYXJhdGVkIGxpc3Qgb2Y6IikKIAlwcmludCgiQSAgICAgICAgID0+
IEEtUEhZIikKQEAgLTM3LDE3ICszNywxNyBAQCBmd3BhdGggPSBzeXMuYXJndlszXQogCiBwaHl0
eXBlcyA9IHBoeXR5cGVzLnNwbGl0KCcsJykKIHRyeToKLQljb3JlcmV2cyA9IG1hcChsYW1iZGEg
cjogaW50KHIpLCBjb3JlcmV2cy5zcGxpdCgnLCcpKQorCWNvcmVyZXZzID0gW2ludChyKSBmb3Ig
ciBpbiBjb3JlcmV2cy5zcGxpdCgnLCcpXQogZXhjZXB0IFZhbHVlRXJyb3I6Ci0JcHJpbnQoIkVS
Uk9SOiBcIiVzXCIgaXMgbm90IGEgdmFsaWQgQ09SRVJFVlMgc3RyaW5nXG4iICUgY29yZXJldnMp
CisJcHJpbnQoKCJFUlJPUjogXCIlc1wiIGlzIG5vdCBhIHZhbGlkIENPUkVSRVZTIHN0cmluZ1xu
IiAlIGNvcmVyZXZzKSkKIAl1c2FnZSgpCiAJc3lzLmV4aXQoMSkKIAogCiBmd2ZpbGVzID0gb3Mu
bGlzdGRpcihmd3BhdGgpCi1md2ZpbGVzID0gZmlsdGVyKGxhbWJkYSBzdHI6IHN0ci5lbmRzd2l0
aCgiLmZ3IiksIGZ3ZmlsZXMpCitmd2ZpbGVzID0gW3N0ciBmb3Igc3RyIGluIGZ3ZmlsZXMgaWYg
c3RyLmVuZHN3aXRoKCIuZnciKV0KIGlmIG5vdCBmd2ZpbGVzOgotCXByaW50KCJFUlJPUjogTm8g
ZmlybXdhcmUgZmlsZXMgZm91bmQgaW4gJXMiICUgZndwYXRoKQorCXByaW50KCgiRVJST1I6IE5v
IGZpcm13YXJlIGZpbGVzIGZvdW5kIGluICVzIiAlIGZ3cGF0aCkpCiAJc3lzLmV4aXQoMSkKIAog
cmVxdWlyZWRfZndmaWxlcyA9IFtdCkBAIC0xNDAsMTAgKzE0MCwxMCBAQCBmb3IgZiBpbiBmd2Zp
bGVzOgogCQkgICBwaHl0eXBlc19tYXRjaChwaHl0eXBlcywgaW5pdHZhbG1hcHBpbmdbZl1bMV0p
OgogCQkJcmVxdWlyZWRfZndmaWxlcyArPSBbZl0KIAkJY29udGludWUKLQlwcmludCgiV0FSTklO
RzogRmlybXdhcmUgZmlsZSAlcyBub3QgZm91bmQgaW4gdGhlIG1hcHBpbmcgbGlzdHMiICUgZikK
KwlwcmludCgoIldBUk5JTkc6IEZpcm13YXJlIGZpbGUgJXMgbm90IGZvdW5kIGluIHRoZSBtYXBw
aW5nIGxpc3RzIiAlIGYpKQogCiBmb3IgZiBpbiBmd2ZpbGVzOgogCWlmIGYgbm90IGluIHJlcXVp
cmVkX2Z3ZmlsZXM6Ci0JCXByaW50KCJEZWxldGluZyAlcyIgJSBmKQorCQlwcmludCgoIkRlbGV0
aW5nICVzIiAlIGYpKQogCQlvcy51bmxpbmsoZndwYXRoICsgJy8nICsgZikKIAotLSAKMS45LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
