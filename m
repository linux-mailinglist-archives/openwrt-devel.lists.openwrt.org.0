Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF825DF24
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 09:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Osnx5RJBwwQNPYtac9zlQWckEjrAXBi/q7M5PMCc8ao=; b=sM/RHN0Qrros5C
	dsDDbuib0N4xXJk9BRkllA6xM31XPwhSZihGdjNlyMbj9U8pn8T0kF4YMWNJRddQF85zISUPlDbcv
	n6iRBqSG+eueIo0sV3uYD5PQfhHb9JfwPtxE8T9cyZQsuEn3bL0N6/2nXsaygbLz3hHID5To3c0Cl
	H5ej0kA/X6Uc+/xb765AgcZXO9ZSBQKPnZyHHwZuCvNZxJSS6TQW6VOcKgsBlL6V82HWa/dodKK9u
	PvHsGSgtwM8QUmwa6Qe1aOAxDH5TSXCoqD4TMXbEA8JxhMq9pb4L/hNBD5QtMnrb4sWVNgcBz1vBd
	R82mzIM709vjvqu8lh7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hia3y-0004i0-8A; Wed, 03 Jul 2019 07:52:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hia3f-0004h0-2z
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 07:52:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id 16so1295340ljv.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 00:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Me/SFZFdknhm2tbmQi5pW3/pgMTN0ZOgq9Hbsv1lVvA=;
 b=mXRfSfIZwWPR1v/VgPp4VEB2CnTP7B+Frrn3kl4CZYljalxqSR9jbZJ+NaBKGp1NKv
 ZnvLBLVJQfFJpaobJreF9Re4jwAvtMPusV0Q4IGqtww4qINeh/Za66opAv7cSkOD2AUN
 RKO8V5CO1sCGfEQFwvfEMQq3qV2Y6Ct9v1c76El3+AIzuQlHGWrjHoEhuqrng0xNqAdB
 pwxq57j/n06SX7avopLpcz2noFJ5wAHUluDhgvMhnzo8EwpPvcSjr/FSfbDwmVjNNxBF
 HuTcWfqGRN89DV6yK33Lc/jhwVlxVt+m2fEx0sULD2Aip33O1yxU+kpr637Hmrk+LVdn
 YtxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Me/SFZFdknhm2tbmQi5pW3/pgMTN0ZOgq9Hbsv1lVvA=;
 b=i/8qXgA10UO2Ajb80p90B7i55MNhAkBr9bWozlFLLWrgXWZfobyHgakxbInL4ZiIpX
 GL8Ih341P7NxCsquHOwdj7hLbWhCRYFoDSnh6s7y3Jx/UdfzU81RUf8mp/LKC7gA8zZ5
 F7X7Moj8pZ8bxMt/6z2Sh5PiaPFvInOft0/2PaqSz3hYjYZIiTBnv4EQXgn6wOIUtzxB
 cb8fhOZz1HlEoXScqsVmJPFgVk99TAWjwtLZjBPH3ts1HiPUJOUTyZfS/Q8O+hdqXuMx
 K/PfaBe6zsDRya7HdHZXyUtNQBslioQ1vMB0d1KrvY9OZMB1EmcIyqhcxApWDzCkILOf
 r3vQ==
X-Gm-Message-State: APjAAAWL1OFPglq6JXQ+7JOnEDlVT9sN4lJLmRG6gj9/FF/+87fkpFft
 B4q/8xJa4b7o3VR2DjhgIY/lNL55
X-Google-Smtp-Source: APXvYqy4b3vWc10hGD0oDyE8iFHPqEtbK+lkQYcItWjXa/4xK/bOtYp3C4WPaAxq+VPJ2HqOUoFr2w==
X-Received: by 2002:a2e:4794:: with SMTP id
 u142mr20457687lja.222.1562140318792; 
 Wed, 03 Jul 2019 00:51:58 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id j23sm268254lfb.93.2019.07.03.00.51.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 00:51:58 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jul 2019 09:51:49 +0200
Message-Id: <20190703075149.4518-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_005203_156999_66CE9775 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] base-files: move stage2 upgrade to
 separated file
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
 Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKZG9fdXBncmFkZV9zdGFn
ZTIoKSBpc24ndCByZWFsbHkgYW55IGNvbW1vbiBjb2RlLiBJdCBpc24ndCB1c2VkIGFueXdoZXJl
CmV4Y2VwdCBmb3IgL3NiaW4vc3lzdXBncmFkZSB0aGF0IHBhc3NlcyBpdCB0byB0aGUgc3RhZ2Uy
LgoKTW92aW5nIGl0cyBjb2RlIHRvIHNlcGFyYXRlZCBmaWxlIGFsc28gc2ltcGxpZmllcyBDT01N
QU5EIHZhcmlhYmxlLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxl
Y2tpLnBsPgotLS0KIC4uLi9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2NvbW1vbi5zaCAg
ICB8IDIyIC0tLS0tLS0tLS0tLS0tLS0KIC4uLi9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRl
L2RvX3N0YWdlMiAgICB8IDI1ICsrKysrKysrKysrKysrKysrKysKIHBhY2thZ2UvYmFzZS1maWxl
cy9maWxlcy9saWIvdXBncmFkZS9zdGFnZTIgICB8ICAyICstCiBwYWNrYWdlL2Jhc2UtZmlsZXMv
ZmlsZXMvc2Jpbi9zeXN1cGdyYWRlICAgICAgfCAgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCAyNyBp
bnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDc1NSBwYWNrYWdl
L2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvZG9fc3RhZ2UyCgpkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2NvbW1vbi5zaCBiL3BhY2thZ2UvYmFz
ZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9jb21tb24uc2gKaW5kZXggN2M0YTJhZjA4Zi4uZGY2
YjU0Zjc5ZSAxMDA2NDQKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRl
L2NvbW1vbi5zaAorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvY29t
bW9uLnNoCkBAIC0yMzUsMjUgKzIzNSwzIEBAIGRlZmF1bHRfZG9fdXBncmFkZSgpIHsKIAlmaQog
CVsgJD8gLW5lIDAgXSAmJiBleGl0IDEKIH0KLQotZG9fdXBncmFkZV9zdGFnZTIoKSB7Ci0JdiAi
UGVyZm9ybWluZyBzeXN0ZW0gdXBncmFkZS4uLiIKLQlpZiB0eXBlICdwbGF0Zm9ybV9kb191cGdy
YWRlJyA+L2Rldi9udWxsIDI+L2Rldi9udWxsOyB0aGVuCi0JCXBsYXRmb3JtX2RvX3VwZ3JhZGUg
IiRJTUFHRSIKLQllbHNlCi0JCWRlZmF1bHRfZG9fdXBncmFkZSAiJElNQUdFIgotCWZpCi0KLQlp
ZiBbICIkU0FWRV9DT05GSUciIC1lcSAxIF0gJiYgdHlwZSAncGxhdGZvcm1fY29weV9jb25maWcn
ID4vZGV2L251bGwgMj4vZGV2L251bGw7IHRoZW4KLQkJcGxhdGZvcm1fY29weV9jb25maWcKLQlm
aQotCi0JdiAiVXBncmFkZSBjb21wbGV0ZWQiCi0Jc2xlZXAgMQotCi0JdiAiUmVib290aW5nIHN5
c3RlbS4uLiIKLQl1bW91bnQgLWEKLQlyZWJvb3QgLWYKLQlzbGVlcCA1Ci0JZWNobyBiIDI+L2Rl
di9udWxsID4vcHJvYy9zeXNycS10cmlnZ2VyCi19CmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2Ut
ZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvZG9fc3RhZ2UyIGIvcGFja2FnZS9iYXNlLWZpbGVzL2Zp
bGVzL2xpYi91cGdyYWRlL2RvX3N0YWdlMgpuZXcgZmlsZSBtb2RlIDEwMDc1NQppbmRleCAwMDAw
MDAwMDAwLi44YWFlNDUyNTYwCi0tLSAvZGV2L251bGwKKysrIGIvcGFja2FnZS9iYXNlLWZpbGVz
L2ZpbGVzL2xpYi91cGdyYWRlL2RvX3N0YWdlMgpAQCAtMCwwICsxLDI1IEBACisjIS9iaW4vc2gK
KworLiAvbGliL2Z1bmN0aW9ucy5zaAorCitpbmNsdWRlIC9saWIvdXBncmFkZQorCit2ICJQZXJm
b3JtaW5nIHN5c3RlbSB1cGdyYWRlLi4uIgoraWYgdHlwZSAncGxhdGZvcm1fZG9fdXBncmFkZScg
Pi9kZXYvbnVsbCAyPi9kZXYvbnVsbDsgdGhlbgorCXBsYXRmb3JtX2RvX3VwZ3JhZGUgIiRJTUFH
RSIKK2Vsc2UKKwlkZWZhdWx0X2RvX3VwZ3JhZGUgIiRJTUFHRSIKK2ZpCisKK2lmIFsgIiRTQVZF
X0NPTkZJRyIgLWVxIDEgXSAmJiB0eXBlICdwbGF0Zm9ybV9jb3B5X2NvbmZpZycgPi9kZXYvbnVs
bCAyPi9kZXYvbnVsbDsgdGhlbgorCXBsYXRmb3JtX2NvcHlfY29uZmlnCitmaQorCit2ICJVcGdy
YWRlIGNvbXBsZXRlZCIKK3NsZWVwIDEKKwordiAiUmVib290aW5nIHN5c3RlbS4uLiIKK3Vtb3Vu
dCAtYQorcmVib290IC1mCitzbGVlcCA1CitlY2hvIGIgMj4vZGV2L251bGwgPi9wcm9jL3N5c3Jx
LXRyaWdnZXIKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFk
ZS9zdGFnZTIgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyCmlu
ZGV4IDA1ZDkyMTQzNzcuLjBhMTFjYjIwMDUgMTAwNzU1Ci0tLSBhL3BhY2thZ2UvYmFzZS1maWxl
cy9maWxlcy9saWIvdXBncmFkZS9zdGFnZTIKKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L2xpYi91cGdyYWRlL3N0YWdlMgpAQCAtNTksNyArNTksNyBAQCBzd2l0Y2hfdG9fcmFtZnMoKSB7
CiAJCWxvY2FsIGZpbGU9IiQod2hpY2ggIiRiaW5hcnkiIDI+L2Rldi9udWxsKSIKIAkJWyAtbiAi
JGZpbGUiIF0gJiYgaW5zdGFsbF9iaW4gIiRmaWxlIgogCWRvbmUKLQlpbnN0YWxsX2ZpbGUgL2V0
Yy9yZXNvbHYuY29uZiAvbGliLyouc2ggL2xpYi9mdW5jdGlvbnMvKi5zaCAvbGliL3VwZ3JhZGUv
Ki5zaCAkUkFNRlNfQ09QWV9EQVRBCisJaW5zdGFsbF9maWxlIC9ldGMvcmVzb2x2LmNvbmYgL2xp
Yi8qLnNoIC9saWIvZnVuY3Rpb25zLyouc2ggL2xpYi91cGdyYWRlLyouc2ggL2xpYi91cGdyYWRl
L2RvX3N0YWdlMiAkUkFNRlNfQ09QWV9EQVRBCiAKIAlbIC1MICIvbGliNjQiIF0gJiYgbG4gLXMg
L2xpYiAkUkFNX1JPT1QvbGliNjQKIApkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2Zp
bGVzL3NiaW4vc3lzdXBncmFkZSBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL3N5c3Vw
Z3JhZGUKaW5kZXggNTRkN2E2NGI0OC4uNzMyOTEyNjJlNyAxMDA3NTUKLS0tIGEvcGFja2FnZS9i
YXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZQorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMv
ZmlsZXMvc2Jpbi9zeXN1cGdyYWRlCkBAIC0zNjMsNyArMzYzLDcgQEAgZmkKIGluc3RhbGxfYmlu
IC9zYmluL3VwZ3JhZGVkCiB2ICJDb21tZW5jaW5nIHVwZ3JhZGUuIENsb3NpbmcgYWxsIHNoZWxs
IHNlc3Npb25zLiIKIAotQ09NTUFORD0nLiAvbGliL2Z1bmN0aW9ucy5zaDsgaW5jbHVkZSAvbGli
L3VwZ3JhZGU7IGRvX3VwZ3JhZGVfc3RhZ2UyJworQ09NTUFORD0nL2xpYi91cGdyYWRlL2RvX3N0
YWdlMicKIAogaWYgWyAtbiAiJEZBSUxTQUZFIiBdOyB0aGVuCiAJcHJpbnRmICclc1x4MDAlc1x4
MDAlcycgIiRSQU1fUk9PVCIgIiRJTUFHRSIgIiRDT01NQU5EIiA+L3RtcC9zeXN1cGdyYWRlCi0t
IAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
