Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4370912F25D
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 01:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3GUGrZnZ4fWjyOS41z09DOmkW29pdsRwNSHln9lv54=; b=P2rkZ1wDMHmGNw
	4JV4mm8T7SLYhtMp6Egor00Oob19FDCr3SlW/gZeQSBFdQlvmhsxKrl2+OLNTiv2KP4tKRdyT9xUL
	/I2j34V4LfGefMBs8QlaqK4Ttxn9XEmz1oW+uguIeq8kc6JpcO+At4Ck8ucVggXSGoJs+IWIczl+n
	+ilrhJ/rDP3p+4g4Jnp4ls96gPTc3fU+rlhvWAvgzupQy515aiKR/0YnchImqkHOj9eZTUOpOp2IO
	oIQMr8DOHerhePePAYNYL4Riw/AmVs2Mg+kkl6S967zk34UvYGtt6SKzRYXN0lMSxEtRp6A/Gi/DR
	kg5CrZnbN6sEU4eNkUuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inB7k-0000Tc-U3; Fri, 03 Jan 2020 00:47:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inB70-0008D8-Mp
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 00:46:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5261B36CF;
 Fri,  3 Jan 2020 01:46:44 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3a03d76c;
 Fri, 3 Jan 2020 01:46:33 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 01:46:38 +0100
Message-Id: <20200103004638.16307-5-ynezz@true.cz>
In-Reply-To: <20200103004638.16307-1-ynezz@true.cz>
References: <20200103004638.16307-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_164646_922220_228C4E4C 
X-CRM114-Status: UNSURE (   6.08  )
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
Subject: [OpenWrt-Devel] [PATCH procd 4/4] system: sysupgrade: fix possibly
 misleading error
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4IHBvc3NpYmx5IG1pc2xlYWRpbmcgZXJyb3IgIkZpcm13YXJlIGltYWdlIGlzIGJyb2tlbiBh
bmQgY2Fubm90IGJlCmluc3RhbGxlZCIgd2hpY2ggY291bGQgYmUgcHJvZHVjZWQgYnkgSlNPTiB3
aXRob3V0IGV4cGVjdGVkIHZhbGlkYXRpb24KdmFyaWFibGVzLCB3aGVyZSAiVmFsaWRhdGlvbiBz
Y3JpcHQgcHJvdmlkZWQgaW52YWxpZCBpbnB1dCIgZXJyb3IgbWVzc2FnZQptYWtlcyBtb3JlIHNl
bnNlLgoKQ2M6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KU2lnbmVkLW9mZi1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBzeXN0ZW0uYyB8IDYgKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMg
Yi9zeXN0ZW0uYwppbmRleCBmMDE5OGE1YjIwYjguLmY0Yjc1Mjc2YWFmMSAxMDA2NDQKLS0tIGEv
c3lzdGVtLmMKKysrIGIvc3lzdGVtLmMKQEAgLTY3MSw2ICs2NzEsMTIgQEAgc3RhdGljIGludCBz
eXN1cGdyYWRlKHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0eCwgc3RydWN0IHVidXNfb2JqZWN0ICpv
YmosCiAKIAlibG9ibXNnX3BhcnNlKHZhbGlkYXRpb25fcG9saWN5LCBfX1ZBTElEQVRJT05fTUFY
LCB2YWxpZGF0aW9uLCBibG9iX2RhdGEoYi5oZWFkKSwgYmxvYl9sZW4oYi5oZWFkKSk7CiAKKwlp
ZiAoIXZhbGlkYXRpb25bVkFMSURBVElPTl9WQUxJRF0gfHwgIXZhbGlkYXRpb25bVkFMSURBVElP
Tl9GT1JDRUFCTEVdIHx8CisJICAgICF2YWxpZGF0aW9uW1ZBTElEQVRJT05fQUxMT1dfQkFDS1VQ
XSkgeworCQlzeXN1cGdyYWRlX2Vycm9yKGN0eCwgcmVxLCAiVmFsaWRhdGlvbiBzY3JpcHQgcHJv
dmlkZWQgaW52YWxpZCBpbnB1dCIpOworCQlyZXR1cm4gVUJVU19TVEFUVVNfSU5WQUxJRF9BUkdV
TUVOVDsKKwl9CisKIAl2YWxpZCA9IHZhbGlkYXRpb25bVkFMSURBVElPTl9WQUxJRF0gJiYgYmxv
Ym1zZ19nZXRfYm9vbCh2YWxpZGF0aW9uW1ZBTElEQVRJT05fVkFMSURdKTsKIAlmb3JjZWFibGUg
PSB2YWxpZGF0aW9uW1ZBTElEQVRJT05fRk9SQ0VBQkxFXSAmJiBibG9ibXNnX2dldF9ib29sKHZh
bGlkYXRpb25bVkFMSURBVElPTl9GT1JDRUFCTEVdKTsKIAlhbGxvd19iYWNrdXAgPSB2YWxpZGF0
aW9uW1ZBTElEQVRJT05fQUxMT1dfQkFDS1VQXSAmJiBibG9ibXNnX2dldF9ib29sKHZhbGlkYXRp
b25bVkFMSURBVElPTl9BTExPV19CQUNLVVBdKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
