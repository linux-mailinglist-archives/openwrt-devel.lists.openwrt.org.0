Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9393972781
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 07:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gqWE8rifiZIO9zv9bL0BxecsGLJXenJQ1NgxMatg3vw=; b=T2gZ3TzL/EewxN
	kkxkyoxNDQl3wmG/pY3D5x6qTz4Gqu5wspWdJZSbiFk0fQmlNk0ERfUxUkuw7x/kL/QC7uRr0nmyG
	tzNDoNe+xIIbhQHw+ZuBlBGp7jEWJC7Lpn1pTyZZeay6ItMDs1nZIuTkLHCZUYyEofMSI7TZctKOh
	tSKRSQmjhlP4w+0Ggw0aN9FaI5OxAJqDUr+Ip1+uES9IldgHXLHXpByd+iXECsu72ktNr3R2uMzsC
	f5c/Fks5jGemw1bdq2/sLjhjsf/Z50pe8JVhD9Wmn1FWTS2ldejuhBzQcdUFUwVBYo4qBmU0adfdV
	O1oyV9oGUDb2V5KSOyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqA8N-00046Y-3u; Wed, 24 Jul 2019 05:48:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqA80-000467-D1
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 05:47:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so14040426lfm.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 23 Jul 2019 22:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d8e/yKzkHQj4cFpyhwStboBeOVDZhR3UoPDzRpibnwQ=;
 b=K/RgqlDMxCYktJC5znC8QsJjkueUUDNAg48ZW5SL/XFNUtQ9PGSs4HDOOTB/LVAnl0
 217xmjS4C1iXJFEWpvoc/QofHMTkHxXm09Q2rEatbkwis7qEN71eSU89Or4rL14TTBSC
 clqJORyFOcrLHMTYZglwXo9H1vsB4QpNxAoplZagteF/TA/ms559PiLvJ6HBdFICcx2i
 bmPuicWMfE8TOshNALKXEdHN5IG+fwNGmdZC8uwxeZW3z41z6KFssPuJfjr6lMvK1Mak
 NgK3f3SFU2VAHG36mhnnHLUE1QdmVna3R0/lxuCfWhUq3zkm1c7sZZYI5pRR7auOVU5G
 qYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d8e/yKzkHQj4cFpyhwStboBeOVDZhR3UoPDzRpibnwQ=;
 b=g3VUiJjEuto2WEVRHWLTH/y9c9gP/CO2K3Ybhf1EfLQcz67RVvI1Tt7j3Wybn4S6CK
 1N1t2ZgSAUY5s7KNLbYByzbO6wFS+pXRhyab39REm7/gZDGGkeKkw1PWalnCm67x3g1A
 DgnRgp6A45DtlREOrNzdrtSqdzw8akchyKxhO0BtyFTPPFjEVLQYy9JiflJq3XAMbM2F
 p6s+KAeDa9gikp2V9Gr+KizEiP2QBYEtSh3LYdB/dfR+1MHrYeBrL50ilTBFLjIFCTFD
 dVMF34NgozBJah1xqbPfACzuFWSvobxq7THs0BExGMjizPzkOIuQ6G+fow5uprVfIfoM
 OC/Q==
X-Gm-Message-State: APjAAAVelPmubCOnz9E2jilg/Hsntq7Jp7y7udG0Q3r+s5Q1DJwQdPd9
 OWRJK2g/jk4lgJJbPvu0a4iVLg5p
X-Google-Smtp-Source: APXvYqzUE5/e4mf1pVN6xZ/8ox2p0abMQfeonNDGj7XPcM/tf8AIAFITNH7QTweeIylF2uFK/qhamg==
X-Received: by 2002:a05:6512:403:: with SMTP id
 u3mr35821408lfk.10.1563947269683; 
 Tue, 23 Jul 2019 22:47:49 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id u21sm8499792lju.2.2019.07.23.22.47.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 22:47:49 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 07:47:37 +0200
Message-Id: <20190724054737.17437-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_224752_469918_8FC053A7 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] lua: create "lua" symlink in staging dir
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKUGFja2FnZXMgdXNpbmcg
aG9zdCBsdWEgZXhwZWN0IC9iaW4vbHVhIHdoaWNoIGhhcyBiZWVuIHJlY2VudGx5IHJlbmFtZWQK
dG8gL2Jpbi9sdWE1LjEuIENyZWF0ZSBzeW1saW5rIGZvciB0aGVtLgoKVGhpcyBmaXhlcyBlLmcu
IGZvbGxvd2luZyBlcnJvciB3aXRoIGdsdW9uOgovYmluL3NoOiAxOiBvcGVud3J0L3N0YWdpbmdf
ZGlyL2hvc3Rwa2cvYmluL2x1YTogbm90IGZvdW5kCgpGaXhlczogZmU1OWI0NmNhN2UwICgibHVh
OiBpbmNsdWRlIHZlcnNpb24gbnVtYmVyIGluIGluc3RhbGxlZCBmaWxlcyIpClJlcG9ydGVkLWJ5
OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogcGFja2FnZS91dGlscy9sdWEvTWFrZWZpbGUg
fCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3BhY2th
Z2UvdXRpbHMvbHVhL01ha2VmaWxlIGIvcGFja2FnZS91dGlscy9sdWEvTWFrZWZpbGUKaW5kZXgg
YzkxMWM2YTkxMy4uYTM5OWE4MzdjZiAxMDA2NDQKLS0tIGEvcGFja2FnZS91dGlscy9sdWEvTWFr
ZWZpbGUKKysrIGIvcGFja2FnZS91dGlscy9sdWEvTWFrZWZpbGUKQEAgLTEzMyw2ICsxMzMsNyBA
QCBkZWZpbmUgSG9zdC9JbnN0YWxsCiAJJChNQUtFKSAtQyAkKEhPU1RfQlVJTERfRElSKSBcCiAJ
CUlOU1RBTExfVE9QPSIkKFNUQUdJTkdfRElSX0hPU1RQS0cpIiBcCiAJCWluc3RhbGwKKwkkKExO
KSBsdWE1LjEgJChTVEFHSU5HX0RJUl9IT1NUUEtHKS9iaW4vbHVhCiBlbmRlZgogCiBkZWZpbmUg
QnVpbGQvSW5zdGFsbERldgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
