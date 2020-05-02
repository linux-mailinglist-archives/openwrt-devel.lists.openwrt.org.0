Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC451C2501
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 May 2020 14:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2zf2sJSS3IWN4jKg//9E5oEIXiinFQXPLw20cAOvSEQ=; b=JFRlJ8KkXYWl/O
	PSyCT3GGwmC7YHNrWxcjkmFK12y2ApFxeNHdRKHIu0Z4hIPRNLXFCK7n0t5vJdrGglAWJpSMRe747
	SoXF/kW1ap1prSe1XMIGMwzSMR6tNzD7SplPehjDV9cIqGi0tm3IL7mFYL1NxQk2EnE8xck8+Legw
	GGJ10wlTm4qGKZjebNV5CnnKmKkK0uYiqUS+SGLGkc0ktB1mbaeu5xxkZIJalDnPPGzVrQo/mubFe
	v2+VT6AGeGO7gGAF7kSje8Rj+ALHHt5htDgJfX+t+XexB7w7eDEG65sXlmXDLGO6ea1Qu92nqZKx7
	2L5pCv6J0exYeXTyXb8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqto-0005A4-9m; Sat, 02 May 2020 12:05:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqtg-000596-Ul
 for openwrt-devel@lists.openwrt.org; Sat, 02 May 2020 12:05:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id e25so5014186ljg.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 May 2020 05:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dA7LRt7ZSrlYleYlVtTvX6qxNlvJG0M3I+dkFpkDWWw=;
 b=Tcl0Ea8D0cgo4zXjy05DsZ3h6Vlxcb7u6FtOqt0Zqqfc9JIUiTFwbvkfKHYzzig8sY
 jU5FlJ8oJB9nsuAVkVfN2rHY/+AEMoiE//XWO1JdKrOsXSwBl96SYWCZOU95+3hSda8S
 gPoANir81cdsLjfq7KntfwoA+531uyk8310i3WTJXNP5+BEDQpArLxxJuGe1y+0P9z5z
 41BrmiRK55cFXk232BNeDGjYVYqr/XCFjZNYCcdTmr51p39VudJgcaramwSvPw5Gy1WG
 oNwFPP3K5B0B1JqsJAyfUpDa1moOmjF7+ySuu0ewsSEudAAENLc+eFo6sdU5bjuYjsk+
 y5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dA7LRt7ZSrlYleYlVtTvX6qxNlvJG0M3I+dkFpkDWWw=;
 b=BKVL/MVT4y+NKspWLRTTpP5uGO9ZD17F98AWhJNMLCzsO3mLoQoXk7Dp0LIfsW5RS7
 +5c/vaT2VFOdbcQVEZs9Rav1aHjxjdwwupNj4n/4kKFw2LednpevMxAqucEy3HbX+DGU
 L3OVe7OIvKDDFFszgVC6WKdESEHYyJk2eNJh149gSM9cQilMAw6aDEBf5WuUPFiO6up2
 JBDOQ1a8Qo2ukW3f5j0UOBCVQBzlzRX7yipOAzjzJy43evjDEG2gzl6TgiOs2gL4Wk+G
 UG8XCUy+6OV3zd9jgnMNB+vZm5rIqdVGCc8z7m9J361cDSYYDJQMglpkZa9qYmIJuLkA
 YPtQ==
X-Gm-Message-State: AGi0PuZ9ZY2uYElN3yS3IMAOcMr3bkP2VBT02NaadzOWRHQGwOwc3JXF
 K6pN8OUz1Y8cE86SWx9m4uZ5PlCX
X-Google-Smtp-Source: APiQypKj7W6tMUDdUfrzw+iRdWyCcYFbv/4iWGV8cP+7m/1c+YkZTVrB6mSZhTopjTvsvBo9mwYIdQ==
X-Received: by 2002:a2e:9c09:: with SMTP id s9mr5183632lji.169.1588421130147; 
 Sat, 02 May 2020 05:05:30 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id u16sm4685405ljk.9.2020.05.02.05.05.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 05:05:29 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 May 2020 14:05:11 +0200
Message-Id: <20200502120511.26447-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_050533_020442_E8C1D94F 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools] block: always use st_dev (device
 ID) of / when looking for root
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVXNlIHRoaXMgbWV0aG9k
IGV2ZW4gaWYgVUJJRlMgZXh0cm9vdCBzdXBwb3J0IGlzIGVuYWJsZWQuIFRoaXMgaXMgbmVlZGVk
Cm9uIHg4NiBzeXN0ZW1zICh1c2luZyBGMkZTIGZvciBvdmVybGF5KSBhcyB0aGV5IG1heSBzdGls
bCBjb21lIHdpdGggRjJGUwplbmFibGVkLgoKUmVmOiBodHRwczovL2J1Z3Mub3BlbndydC5vcmcv
aW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0yMjMxClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBN
acWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBibG9jay5jIHwgMjYgKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxNSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9ibG9jay5jIGIvYmxvY2suYwppbmRleCBmZDM1ZDZiLi5j
NGFlODhhIDEwMDY0NAotLS0gYS9ibG9jay5jCisrKyBiL2Jsb2NrLmMKQEAgLTEzMTYsOCArMTMx
Niw3IEBAIHN0YXRpYyBpbnQgZmluZF9ibG9ja191YmlfUk8obGlidWJpX3QgbGlidWJpLCBjaGFy
ICpuYW1lLCBjaGFyICpwYXJ0LCBpbnQgcGxlbikKIAogCXJldHVybiBlcnI7CiB9Ci0KLSNlbHNl
CisjZW5kaWYKIAogc3RhdGljIGludCBmaW5kX3Jvb3RfZGV2KGNoYXIgKmJ1ZiwgaW50IGxlbikK
IHsKQEAgLTEzNDgsOCArMTM0Nyw2IEBAIHN0YXRpYyBpbnQgZmluZF9yb290X2RldihjaGFyICpi
dWYsIGludCBsZW4pCiAJcmV0dXJuIC0xOwogfQogCi0jZW5kaWYKLQogc3RhdGljIGludCB0ZXN0
X2ZzX3N1cHBvcnQoY29uc3QgY2hhciAqbmFtZSkKIHsKIAljaGFyIGxpbmVbMTI4XSwgKnA7CkBA
IC0xMzkyLDI2ICsxMzg5LDI1IEBAIHN0YXRpYyBpbnQgY2hlY2tfZXh0cm9vdChjaGFyICpwYXRo
KQogCWNoYXIgZGV2cGF0aFszMl07CiAJY2hhciB0YWdbNjRdOwogCUZJTEUgKmZwOworCWludCBl
cnI7CiAKKwllcnIgPSBmaW5kX2Jsb2NrX210ZCgiXCJyb290ZnNcIiIsIGRldnBhdGgsIHNpemVv
ZihkZXZwYXRoKSk7CiAjaWZkZWYgVUJJRlNfRVhUUk9PVAotCWlmIChmaW5kX2Jsb2NrX210ZCgi
XCJyb290ZnNcIiIsIGRldnBhdGgsIHNpemVvZihkZXZwYXRoKSkpIHsKLQkJaW50IGVyciA9IC0x
OworCWlmIChlcnIpIHsKIAkJbGlidWJpX3QgbGlidWJpOwogCiAJCWxpYnViaSA9IGxpYnViaV9v
cGVuKCk7CiAJCWVyciA9IGZpbmRfYmxvY2tfdWJpX1JPKGxpYnViaSwgInJvb3RmcyIsIGRldnBh
dGgsIHNpemVvZihkZXZwYXRoKSk7CiAJCWxpYnViaV9jbG9zZShsaWJ1YmkpOwotCQlpZiAoZXJy
KQotCQkJcmV0dXJuIC0xOwotCX0KLSNlbHNlCi0JaWYgKGZpbmRfYmxvY2tfbXRkKCJcInJvb3Rm
c1wiIiwgZGV2cGF0aCwgc2l6ZW9mKGRldnBhdGgpKSkgewotCQlpZiAoZmluZF9yb290X2Rldihk
ZXZwYXRoLCBzaXplb2YoZGV2cGF0aCkpKSB7Ci0JCQlVTE9HX0VSUigiZXh0cm9vdDogdW5hYmxl
IHRvIGRldGVybWluZSByb290IGRldmljZVxuIik7Ci0JCQlyZXR1cm4gLTE7Ci0JCX0KIAl9CiAj
ZW5kaWYKKwlpZiAoZXJyKSB7CisJCWVyciA9IGZpbmRfcm9vdF9kZXYoZGV2cGF0aCwgc2l6ZW9m
KGRldnBhdGgpKTsKKwl9CisJaWYgKGVycikgeworCQlVTE9HX0VSUigiZXh0cm9vdDogdW5hYmxl
IHRvIGRldGVybWluZSByb290IGRldmljZVxuIik7CisJCXJldHVybiAtMTsKKwl9CiAKIAkvKiBG
aW5kIHJvb3QgZGV2aWNlIHByb2JlX2luZm8gc28gd2Uga25vdyBpdHMgVVVJRCAqLwogCWxpc3Rf
Zm9yX2VhY2hfZW50cnkodG1wLCAmZGV2aWNlcywgbGlzdCkgewotLSAKMi4yNi4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
