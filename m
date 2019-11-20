Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB381045FD
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGnRyZcFoi5eVmXXWAecGCDC/WdCt0GwfZy8FZRg8Xo=; b=tWkw9O+eHGRF+s
	6bx+0Jom7rePLeXwW+a3ukFQ8Ux7qVTYofSBZWvuCQm63dpgKZ/Y2VyuG9suOYgBO6Z2yqskvj95Y
	BAcbfLrjEiVQnBRiq9y77lnoTEW9sQtNBN8R5AOV0N1VVCBfa3vc0Hm2G3Rci7dqtkYz4p2MMstXA
	8tSm3T79okF0tS/SFwmkwS4upxlGr5QUPFHvgP3+laoUYejok1NkLGXgnv+wkYO1hg/6WsRGlICLj
	THMSEeMdHHXQsQ2VNVz4z2FEmA7swp3XAV3HF2sCw8bSvaAbE3+559oBJ6ogF1Z5vWAyOgHkfQbfk
	VJyPT2sTbqmforoGhTFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXn7-0008T3-9M; Wed, 20 Nov 2019 21:45:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXld-0005p4-Bp
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3CBF94ADB;
 Wed, 20 Nov 2019 22:44:02 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 123b00af;
 Wed, 20 Nov 2019 22:43:52 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:50 +0100
Message-Id: <20191120214353.27652-8-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-1-ynezz@true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134405_595776_25DC4402 
X-CRM114-Status: UNSURE (   7.54  )
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
Subject: [OpenWrt-Devel] [PATCH v2 libubox 07/10] jshn: main: fix leak of
 memory pointed to by 'vars'
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

Rml4ZXMgZm9sbG93aW5nIGxlYWsgb2YgbWVtb3J5OgoKIDYsMDE2IGJ5dGVzIGluIDEgYmxvY2tz
IGFyZSBwb3NzaWJseSBsb3N0IGluIGxvc3MgcmVjb3JkIDEgb2YgMQogICAgYXQgMHg0QzMxQjI1
OiBjYWxsb2MKICAgIGJ5IDB4MTA5OEY4OiBtYWluIChqc2huLmM6MzUzKQoKU2lnbmVkLW9mZi1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBqc2huLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2pzaG4uYyBiL2pzaG4uYwpp
bmRleCAwYWExMjBjOTI1ZGQuLjAyYjM1Mjg2ZWE4YiAxMDA2NDQKLS0tIGEvanNobi5jCisrKyBi
L2pzaG4uYwpAQCAtMzY2LDYgKzM2Niw3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJn
dikKIAkJdmFyc1tpXS52YWwgPSBjICsgMTsKIAkJYXZsX2luc2VydCgmZW52X3ZhcnMsICZ2YXJz
W2ldLmF2bCk7CiAJfQorCWZyZWUodmFycyk7CiAKIAl3aGlsZSAoKGNoID0gZ2V0b3B0KGFyZ2Ms
IGFyZ3YsICJwOm5pcjpSOm86dyIpKSAhPSAtMSkgewogCQlzd2l0Y2goY2gpIHsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
