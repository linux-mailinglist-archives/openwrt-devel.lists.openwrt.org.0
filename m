Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59240FB973
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 21:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8GZOLloxxRfwTCyqLIoJHU0mRi3vEwmCviSGv9MCaKI=; b=UIKF/Ch0ZTqxHi
	w9V+hM6qjfbdkG2pLOJVEvnywB9kv7CQC+oDiFJteiWbx1OXn6P5L+s/vUf57XUBdNqjQs67uGEUS
	Quxc0zZwKd4xFSqZABFCSogvBV/sQ8OnICsFm8CilY82++DFECKB7oSALjiZCemuOcSpjktYOEvrr
	n3f9ylEcRNrUHTtZR4/znVHoQfA6TfSEpeW/14Llv3sx1jERlH3kJZlDpHTKlmnPkaGPorqGs72oN
	Jt5F/r1EEYpaQ4AYT7+61fTCs0fLyek2xrMGAjWP9o+twvKASJ/hzOwf7uXXagGwe8Wc2epb/4Wlb
	bZ3/y1i7Qc3PkjOXX3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyy0-0007Bx-Ax; Wed, 13 Nov 2019 20:10:16 +0000
Received: from ned.t-8ch.de ([212.47.237.191])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyxt-0005zv-1S
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 20:10:10 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas@t-8ch.de>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=t-8ch.de; s=mail;
 t=1573675794; bh=ZP3rZ7zblpFt2gJAbdUz16gbwVBAfXqzl3KPqsCsIzY=;
 h=From:To:Cc:Subject:Date:From;
 b=oe6gv1/7eRdT82fu4V/J3uOuIzAb1x0RPa1DKgvFsjZRUbobDTypCeEPWBfeRl58+
 FHJc3SSUh4VNL69cDjv2T33+UGPJ3ilL7ckHiuIWSHP7KVwA6TeZvV6Op34AXpueQO
 I2H/lSOfyXhqwVMhL/au8XWl4uihStcQ/NLKyhqw=
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 21:09:31 +0100
Message-Id: <20191113200931.106783-1-thomas@t-8ch.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_121009_363660_C78FBED3 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.47.237.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] build: support python 3.8
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
Cc: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas@t-8ch.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOfc2NodWggPHRob21hc0B0LThjaC5kZT4KLS0tCiBp
bmNsdWRlL3ByZXJlcS1idWlsZC5tayB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3ByZXJlcS1idWlsZC5tayBiL2luY2x1ZGUvcHJl
cmVxLWJ1aWxkLm1rCmluZGV4IDRjNTk5MTAwNTYuLjY1YmFmMWY1ZTUgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCisrKyBiL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCkBAIC0x
NDQsMTIgKzE0NCwxNCBAQCAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQscGVybCxQbGVh
c2UgaW5zdGFsbCBQZXJsIDUueCwgXAogJChldmFsICQoY2FsbCBDbGVhbnVwUHl0aG9uMikpCiAK
ICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxweXRob24sUGxlYXNlIGluc3RhbGwgUHl0
aG9uID49IDMuNSwgXAorCXB5dGhvbjMuOCAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0aG9uIDNcLls1
LTldXC4/JywgXAogCXB5dGhvbjMuNyAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0aG9uIDNcLls1LTld
XC4/JywgXAogCXB5dGhvbjMuNiAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0aG9uIDNcLls1LTldXC4/
JywgXAogCXB5dGhvbjMuNSAtViAyPiYxIHwgZ3JlcCAtRSAnUHl0aG9uIDNcLls1LTldXC4/Jywg
XAogCXB5dGhvbjMgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycpKQogCiAk
KGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQscHl0aG9uMyxQbGVhc2UgaW5zdGFsbCBQeXRo
b24gPj0gMy41LCBcCisJcHl0aG9uMy44IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUt
OV1cLj8nLCBcCiAJcHl0aG9uMy43IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1c
Lj8nLCBcCiAJcHl0aG9uMy42IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8n
LCBcCiAJcHl0aG9uMy41IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nLCBc
Ci0tIAoyLjI0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
