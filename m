Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0977C1DD4C1
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 19:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fwg0Hf+EVvQNu/WgvN6bKwHOC8CxrsIBaCQ+aj7rquA=; b=a5JhpqLwgFzsPe
	sZXWjsxYY/5KcPi3zt2lGU6jLldXkX17X0fJYiceqzmyssD/6m9YgdbbWB/b+URxer/xpo8hkjlHx
	aBAvtchXcC3RW0AIb/pH0T5sN+RnTiu5tIxnaVhMff4XBFnYAmsSkJBFn5/nTGerzf3N/Pr5etG0O
	b/9nksONo5FfZ3huYgveRbbc29p87Ip/KHCmu3GIcMQ9XNHko9Ai5XNtxX9J9PzIElsaBSrFvSSRw
	qawn+cDyjGwjkSBVP+KKeO/mPlbKwRZM8e+euV0jaZN94nvPHzOxPpXj82P8+2Qv1nnhXJejAiVI0
	EB1CWZ8oW5nhLejqfRKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpI8-0002t8-N1; Thu, 21 May 2020 17:47:36 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpI1-0002sQ-FT
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 17:47:30 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id CE0BF6000B;
 Thu, 21 May 2020 19:47:22 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org CE0BF6000B
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org CE0BF6000B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1590083244; bh=Yr17hSemw8ACvr5E3yEjCLhCckhdsbw0YfD6fFBeWxk=;
 h=From:To:Cc:Subject:Date:From;
 b=0+pP7n/kc9HprQOLJ5XKk26WtH8BbQCekESfb94u4bdJ2rPgT01G+zGOK07DQf00K
 QB2J22JLbDoAqszUmL91Vq8HscDyN2HtZE53B+10As9mu+Fm89vKN0u8rnweEQRt0m
 wdHNwlOLTyT9mKGwmTyKo09r8rtzziclVhH7BCEM=
Received: by supercopter (sSMTP sendmail emulation);
 Thu, 21 May 2020 19:47:22 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 May 2020 19:47:17 +0200
Message-Id: <20200521174717.32524-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_104729_689203_B6C078A9 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2] packages/utils: fbtest fix Makefile
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIGNsZWFuIHRhcmdldCB0cmllcyB0byByZW1vdmUgd2hhdCBsb29rcyBsaWtlIGEgYm9ndXMg
J3JiY2ZnJywKcHJvYmFibHkgY2FycmllZCBvdmVyIGNvcHktcGFzdGEuIFJlbW92ZSB0aGUgbmFt
ZSBvZiB0aGUgZ2VuZXJhdGVkCmV4ZWN1dGFibGUgKCdmYnRlc3QnKSBpbnN0ZWFkLgoKU2lnbmVk
LW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgpGaXhlczogODA5
OWY0ZTBkM2FmICgiZmJ0ZXN0IHV0aWxpdHkgIikKLS0tCiBwYWNrYWdlL3V0aWxzL2ZidGVzdC9z
cmMvTWFrZWZpbGUgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2ZidGVzdC9zcmMvTWFrZWZpbGUg
Yi9wYWNrYWdlL3V0aWxzL2ZidGVzdC9zcmMvTWFrZWZpbGUKaW5kZXggMDc1YmMwZWNiZi4uZjdj
OWY4NmE4NyAxMDA2NDQKLS0tIGEvcGFja2FnZS91dGlscy9mYnRlc3Qvc3JjL01ha2VmaWxlCisr
KyBiL3BhY2thZ2UvdXRpbHMvZmJ0ZXN0L3NyYy9NYWtlZmlsZQpAQCAtMTEsNCArMTEsNCBAQCBm
YnRlc3Q6ICQoT0JKUykKIAkkKENDKSAtbyAkQCAkKE9CSlMpCiAKIGNsZWFuOgotCXJtIC1mIHJi
Y2ZnICoubworCXJtIC1mIGZidGVzdCAqLm8KLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
