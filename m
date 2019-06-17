Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6B2490F9
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3IFkA7i8JezniW0xUVaGi1sjEXMaTSPrcml7N34t3I=; b=aRoG3h+Lg5uI3v
	KXj1u3IQvFlu8VIl3ggXeIF8ZOSYZCjY/Sxf7BlPCD+3tniYuDMKV8OqdQREOr7L9mA85Wm1knETN
	76uaTr4SuPnihbszAY30i3dlH0JvrQesyl6CZmbYhPmhSDWqiphm75JJxKrGZPNjwP+7v21ZtEkiE
	74UARPfF2qjjizaBQdGxxr/+37qV01FNgjgCH5xgNAgOfB7+dRCLNwDA2nS2qB3uPCi6C6JgKAxHb
	noJvdF2AeTGqJp9f5spsiC3bVifnw+G6iHFRUAngJQ+39tilyqaeOLuIo3V/9SJ6bwE8NM6CymbSc
	nTgpvpAEQkQoEYNS1tdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxxY-0000Ld-LF; Mon, 17 Jun 2019 20:10:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxwE-0006Iw-DY
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:09:11 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 206864FB8;
 Mon, 17 Jun 2019 22:09:07 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8be9b506;
 Mon, 17 Jun 2019 22:09:04 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 22:08:56 +0200
Message-Id: <1560802136-4157-7-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560802136-4157-1-git-send-email-ynezz@true.cz>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130910_620174_B229605F 
X-CRM114-Status: UNSURE (   7.55  )
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
Subject: [OpenWrt-Devel] [PATCH 6/6] build: cleanup possibly dangling Python
 2 host symlink
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

V2hlbiBidW1waW5nIGJ1aWxkcm9vdCB0byBQeXRob24gMywgd2UgbmVlZCB0byBhc3N1cmUsIHRo
YXQgUHl0aG9uCnN5bWxpbmsgaW4gc3RhZ2luZyBiaW4gZGlyZWN0b3J5IHBvaW50cyB0byBQeXRo
b24gPj0gMy41IGFzIHdlbGwuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIGluY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rIHwgIDIgKysKIGluY2x1ZGUvcHJl
cmVxLm1rICAgICAgIHwgMTEgKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rIGIvaW5jbHVkZS9w
cmVyZXEtYnVpbGQubWsKaW5kZXggYzUyY2E3MTkwODdjLi40MGRmODk1NzVkOWUgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCisrKyBiL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1r
CkBAIC0xNDEsNiArMTQxLDggQEAgJChldmFsICQoY2FsbCBTZXR1cEhvc3RDb21tYW5kLHdnZXQs
UGxlYXNlIGluc3RhbGwgR05VICd3Z2V0JywgXAogJChldmFsICQoY2FsbCBTZXR1cEhvc3RDb21t
YW5kLHBlcmwsUGxlYXNlIGluc3RhbGwgUGVybCA1LngsIFwKIAlwZXJsIC0tdmVyc2lvbiB8IGdy
ZXAgInBlcmwuKnY1IikpCiAKKyQoZXZhbCAkKGNhbGwgQ2xlYW51cFB5dGhvbjIpKQorCiAkKGV2
YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQscHl0aG9uLFBsZWFzZSBpbnN0YWxsIFB5dGhvbiA+
PSAzLjUsIFwKIAlweXRob24zLjcgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwu
PycsIFwKIAlweXRob24zLjYgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycs
IFwKZGlmZiAtLWdpdCBhL2luY2x1ZGUvcHJlcmVxLm1rIGIvaW5jbHVkZS9wcmVyZXEubWsKaW5k
ZXggMGYwZjI1Mzc0NDhmLi41MWEwYTg3OWUzZGMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvcHJlcmVx
Lm1rCisrKyBiL2luY2x1ZGUvcHJlcmVxLm1rCkBAIC02Niw2ICs2NiwxNyBAQCBkZWZpbmUgUmVx
dWlyZUhlYWRlcgogICAkJChldmFsICQkKGNhbGwgUmVxdWlyZSwkKDEpLCQoMikpKQogZW5kZWYK
IAorZGVmaW5lIENsZWFudXBQeXRob24yCisgIGRlZmluZSBSZXF1aXJlL3B5dGhvbjItY2xlYW51
cAorCVsgLWYgIiQoU1RBR0lOR19ESVJfSE9TVCkvYmluL3B5dGhvbiIgXSAmJiBcCisJCSQoU1RB
R0lOR19ESVJfSE9TVCkvYmluL3B5dGhvbiAtViAyPiYxIHwgXAorCQlncmVwIC1FICdQeXRob24g
M1wuWzUtOV1cLj8nID4gL2Rldi9udWxsIDI+JjEgfHwgXAorCQlybSAkKFNUQUdJTkdfRElSX0hP
U1QpL2Jpbi9weXRob24KKyAgZW5kZWYKKworICAkJChldmFsICQkKGNhbGwgUmVxdWlyZSxweXRo
b24yLWNsZWFudXApKQorZW5kZWYKKwogZGVmaW5lIFF1b3RlSG9zdENvbW1hbmQKICckKHN1YnN0
ICcsJyInIicsJChzdHJpcCAkKDEpKSknCiBlbmRlZgotLSAKMS45LjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
