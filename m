Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3D1B90C1
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 15:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ip4Wq1RKq69jYoL41biTU55FckuKUr0+HaXn5I/kNfg=; b=uDoLDbzicRMjV9
	3NGCeM5UGWIo8RN57pZ3V41PE13g6Ifdq4bdJyAlaqKxZrv1wGmz38GeqXPvE74a9LXR84e9KjAOv
	81zmHPiJ7egwBO6z5qFp0zlxWYWxi8PyikvM5js32tLBOy+bGYm2F5qv33N8gZT4CCXi98hb+SBZW
	ymzxzNI30HAc0gfd4ufWOLDhOHL/krRlHICdSbHbcHqMhr1PptdfLXVG5tivWqGCj3QIiNJc4xTBv
	fF05tbowC60x7QylOotVeTRy2h8+nQ41ww0cRh9cxh0JCKHWJqS8JWqoZSQrVgZKSIvQS0otTBHye
	eiNvfh2maZCBWHY2+/bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJ6P-00026h-4r; Fri, 20 Sep 2019 13:37:37 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJ67-0001tJ-OP
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 13:37:21 +0000
Received: by mail-lf1-x142.google.com with SMTP id d17so5081266lfa.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 06:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jphzEcSkNncyQXURXy+bMvvSOETA08+BxHJ5z57Bb0M=;
 b=EfzMViMon0Yh012SQYg8h4xK0JFPuLUGf8hs1IklN8um4D/H4ReoSmHw3ok0fVz8wA
 ydZvJ9tblvpBVSh29a7WTqMk9IUdC3G8y9/FfinNiNstDyifALTmZzkCRw7WiQEDaBrp
 tRPJSKJCOj20Ei4e4kXUkdfi2HXwME57FgKE9QNgJHDSK8qBFcZji5mW9Ij/uxtduAZo
 bGYtLMXFiX6MzgLcHcy3BF2pOpnaIKYVsZO9Jf/uwXkNZLuL5kN4x94Vjyk1r6GTg2c/
 4U/y8/xo6DFTzBND9j9hKecItPSbnprkm0n3ZA+qqKYjSERd+JQepKHJRit1HW1zH9nA
 nDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jphzEcSkNncyQXURXy+bMvvSOETA08+BxHJ5z57Bb0M=;
 b=Qiz8o4R1yPyMhOf6KdDourU1A5EmB9oeywSonsYjYwvZxZl3fq923gugLWM8AhQp0G
 fH38LcPW3aF7n2MPhgStkFgh0ZxIDa4bovIsT/cQaJIJ1jBPxP0xb/RcD57FUWu4S5iq
 qnT1RH0Kf9GMagpPQXEXiqa0EC8lkyYv7ELi9flI+X4H6UNXGHugaQK5pyHUUEfyQz9Z
 GPek1ZDGj7X02Pvw7/teQuin81vtWLv64+P4tyEk2IlWRBBZoJFUqWDqnrg1ltz/Wt2Q
 30Zdnb9OKD4PuF2OGrQ+c4h1+WJbXEUtliXrskh85ofoowsAN15NZavQAEPK3ooUs2HJ
 28Pg==
X-Gm-Message-State: APjAAAXO3g5TUHBMM0aJzNDfNM+1NsG6xrzpsPk5p+0l/WbukrcpNX/f
 Q/+e35SU0kA5XwiNNST6aQY=
X-Google-Smtp-Source: APXvYqxlzmxdYLzOPpcInVQyKgAS4zc777/kdZlRsQ6Gg/ppqj9M7QdxbhVc99mR+kWGcY6bb23LnQ==
X-Received: by 2002:a19:4347:: with SMTP id m7mr8570675lfj.146.1568986637463; 
 Fri, 20 Sep 2019 06:37:17 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id b25sm475423ljj.36.2019.09.20.06.37.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 06:37:15 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jouni Malinen <j@w1.fi>, hostap@lists.infradead.org,
 openwrt-devel@lists.openwrt.org
Date: Fri, 20 Sep 2019 15:37:08 +0200
Message-Id: <20190920133708.15313-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_063719_802795_C266E5E5 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH RFC] cfg80211: add new command for reporting
 wiphy crashes
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSGFyZHdhcmUgb3IgZmly
bXdhcmUgaW5zdGFiaWxpdHkgbWF5IHJlc3VsdCBpbiB1bnVzYWJsZSB3aXBoeS4gSW4gc3VjaApj
YXNlcyB1c3VhbGx5IGEgaGFyZHdhcmUgcmVzZXQgaXMgbmVlZGVkLiBUbyBhbGxvdyBhIGZ1bGwg
cmVjb3ZlcnkKa2VybmVsIGhhcyB0byBpbmRpY2F0ZSBwcm9ibGVtIHRvIHRoZSB1c2VyIHNwYWNl
LgoKVGhpcyBuZXcgbmw4MDIxMSBjb21tYW5kIGxldHMgdXNlciBzcGFjZSBrbm93biB3aXBoeSBo
YXMgY3Jhc2hlZCBhbmQgaGFzCmJlZW4ganVzdCByZWNvdmVyZWQuIFdoZW4gYXBwbGljYWJsZSBp
dCBzaG91bGQgcmVzdWx0IGluIHN1cHBsaWNhbnQgb3IKYXV0aGVudGljYXRvciByZWNvbmZpZ3Vy
aW5nIGFsbCBpbnRlcmZhY2VzLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZh
bEBtaWxlY2tpLnBsPgotLS0KSSdkIGxpa2UgdG8gdXNlIHRoaXMgbmV3IGNmZzgwMjExX2NyYXNo
X3JlcG9ydCgpIGluIGJyY21mbWFjIGFmdGVyIGEKc3VjY2Vzc2Z1bCByZWNvdmVyeSBmcm9tIGEg
RnVsbE1BQyBmaXJtd2FyZSBjcmFzaC4KCkxhdGVyIG9uIEknZCBsaWtlIHRvIG1vZGlmeSBob3N0
YXBkIHRvIHJlY29uZmlndXJlIHdpcGh5IHVzaW5nIGEKcHJldmlvdXNseSB1c2VkIHNldHVwLgoK
SSdtIE9wZW5XcnQgZGV2ZWxvcGVyICYgdXNlciBhbmQgSSBnb3QgYW5ub3llZCBieSBteSBkZXZp
Y2VzIG5vdCBhdXRvCnJlY292ZXJpbmcgYWZ0ZXIgdmFyaW91cyBmYWlsdXJlcy4gVGhlcmUgYXJl
IHRoaW5ncyBJIGNhbm5vdCBmaXggKGh3CmZhaWx1cmVzIG9yIGNsb3NlZCBmdyBjcmFzaGVzKSBi
dXQgSSBzdGlsbCBleHBlY3QgbXkgZGV2aWNlcyB0byBnZXQKYmFjayB0byBvcGVyYXRpb25hbCBz
dGF0ZSBhcyBzb29uIGFzIHBvc3NpYmxlIG9uIHRoZWlyIG93bi4KLS0tCiBpbmNsdWRlL25ldC9j
Zmc4MDIxMS5oICAgICAgIHwgIDcgKysrKysrKwogaW5jbHVkZS91YXBpL2xpbnV4L25sODAyMTEu
aCB8ICAyICsrCiBuZXQvd2lyZWxlc3Mvbmw4MDIxMS5jICAgICAgIHwgMjkgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbmV0L2NmZzgwMjExLmggYi9pbmNsdWRlL25ldC9jZmc4MDIxMS5o
CmluZGV4IGZmNDVjM2UxYWJmZi4uNjY4ZmEyN2M4OGNjIDEwMDY0NAotLS0gYS9pbmNsdWRlL25l
dC9jZmc4MDIxMS5oCisrKyBiL2luY2x1ZGUvbmV0L2NmZzgwMjExLmgKQEAgLTc0MzcsNiArNzQz
NywxMyBAQCB2b2lkIGNmZzgwMjExX3Btc3JfY29tcGxldGUoc3RydWN0IHdpcmVsZXNzX2RldiAq
d2RldiwKIGJvb2wgY2ZnODAyMTFfaWZ0eXBlX2FsbG93ZWQoc3RydWN0IHdpcGh5ICp3aXBoeSwg
ZW51bSBubDgwMjExX2lmdHlwZSBpZnR5cGUsCiAJCQkgICAgIGJvb2wgaXNfNGFkZHIsIHU4IGNo
ZWNrX3N3aWYpOwogCisvKioKKyAqIGNmZzgwMjExX2NyYXNoX3JlcG9ydCAtIHJlcG9ydCBjcmFz
aGVkIHdpcGh5IHRoYXQgcmVxdWlyZXMgYSBzZXR1cAorICoKKyAqIEB3aXBoeTogdGhlIHdpcGh5
CisgKiBAZ2ZwOiBhbGxvY2F0aW9uIGZsYWdzCisgKi8KK3ZvaWQgY2ZnODAyMTFfY3Jhc2hfcmVw
b3J0KHN0cnVjdCB3aXBoeSAqd2lwaHksIGdmcF90IGdmcCk7CiAKIC8qIExvZ2dpbmcsIGRlYnVn
Z2luZyBhbmQgdHJvdWJsZXNob290aW5nL2RpYWdub3N0aWMgaGVscGVycy4gKi8KIApkaWZmIC0t
Z2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L25sODAyMTEuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9u
bDgwMjExLmgKaW5kZXggYmVlZTU5YzgzMWE3Li45ZTE3ZmViMDM4NDkgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvdWFwaS9saW51eC9ubDgwMjExLmgKKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L25sODAy
MTEuaApAQCAtMTMyNSw2ICsxMzI1LDggQEAgZW51bSBubDgwMjExX2NvbW1hbmRzIHsKIAogCU5M
ODAyMTFfQ01EX1BST0JFX01FU0hfTElOSywKIAorCU5MODAyMTFfQ01EX0NSQVNIX1JFUE9SVCwK
KwogCS8qIGFkZCBuZXcgY29tbWFuZHMgYWJvdmUgaGVyZSAqLwogCiAJLyogdXNlZCB0byBkZWZp
bmUgTkw4MDIxMV9DTURfTUFYIGJlbG93ICovCmRpZmYgLS1naXQgYS9uZXQvd2lyZWxlc3Mvbmw4
MDIxMS5jIGIvbmV0L3dpcmVsZXNzL25sODAyMTEuYwppbmRleCBkMjFiMTU4MWE2NjUuLmQyOTc4
NWZiMDY3NiAxMDA2NDQKLS0tIGEvbmV0L3dpcmVsZXNzL25sODAyMTEuYworKysgYi9uZXQvd2ly
ZWxlc3Mvbmw4MDIxMS5jCkBAIC0xNjk0MCw2ICsxNjk0MCwzNSBAQCB2b2lkIGNmZzgwMjExX3Vw
ZGF0ZV9vd2VfaW5mb19ldmVudChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAogfQogRVhQT1JU
X1NZTUJPTChjZmc4MDIxMV91cGRhdGVfb3dlX2luZm9fZXZlbnQpOwogCit2b2lkIGNmZzgwMjEx
X2NyYXNoX3JlcG9ydChzdHJ1Y3Qgd2lwaHkgKndpcGh5LCBnZnBfdCBnZnApCit7CisJc3RydWN0
IGNmZzgwMjExX3JlZ2lzdGVyZWRfZGV2aWNlICpyZGV2ID0gd2lwaHlfdG9fcmRldih3aXBoeSk7
CisJc3RydWN0IHNrX2J1ZmYgKm1zZzsKKwl2b2lkICpoZHI7CisKKwltc2cgPSBubG1zZ19uZXco
TkxNU0dfREVGQVVMVF9TSVpFLCBnZnApOworCWlmICghbXNnKQorCQlyZXR1cm47CisKKwloZHIg
PSBubDgwMjExaGRyX3B1dChtc2csIDAsIDAsIDAsIE5MODAyMTFfQ01EX0NSQVNIX1JFUE9SVCk7
CisJaWYgKCFoZHIpCisJCWdvdG8gbmxhX3B1dF9mYWlsdXJlOworCisJaWYgKG5sYV9wdXRfdTMy
KG1zZywgTkw4MDIxMV9BVFRSX1dJUEhZLCByZGV2LT53aXBoeV9pZHgpKQorCQlnb3RvIG5sYV9w
dXRfZmFpbHVyZTsKKworCWdlbmxtc2dfZW5kKG1zZywgaGRyKTsKKworCWdlbmxtc2dfbXVsdGlj
YXN0X25ldG5zKCZubDgwMjExX2ZhbSwgd2lwaHlfbmV0KCZyZGV2LT53aXBoeSksIG1zZywgMCwK
KwkJCQlOTDgwMjExX01DR1JQX0NPTkZJRywgZ2ZwKTsKKworCXJldHVybjsKKworbmxhX3B1dF9m
YWlsdXJlOgorCW5sbXNnX2ZyZWUobXNnKTsKK30KK0VYUE9SVF9TWU1CT0woY2ZnODAyMTFfY3Jh
c2hfcmVwb3J0KTsKKwogLyogaW5pdGlhbGlzYXRpb24vZXhpdCBmdW5jdGlvbnMgKi8KIAogaW50
IF9faW5pdCBubDgwMjExX2luaXQodm9pZCkKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
