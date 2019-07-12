Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C366C0B
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jul 2019 14:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG6273kIotvnP6RZNc3UtE9rSIap78aR/wc2UNOCRBI=; b=gN6spio/c0954E
	4NvjZc0q6hrHOTReLdkoBskWJAqW2EpXEha0vXgEGBfBlvtqMvDNQOq1JwJO+Psjj7xS7dMVAfVRM
	wET3Mikk1Iq99PIMWHtr4UIQEEYYymYJObL4HSx3IdKxwfJHA8PzcOmskf+zWV6el1ZiYrZVk5CdH
	OXJBj2rv3diAr77ED73rv3tGxlljrSSQ6udxDFjnMsdV7bKi1RquYXUFjHvSOIr/R2n0cGHvVGKJD
	LGgApqn3p0REAiKD4DlCDvXbb9gtA0jh/X0DA7i/6VCQer8MA0NGjgZ+PHALRkYsY3ouquiTMtHEu
	0qQCOstkMQiYUGmtxk3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluJw-0004nz-Qv; Fri, 12 Jul 2019 12:06:36 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluJR-0004OC-A7
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jul 2019 12:06:06 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so9101566ljg.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jul 2019 05:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aZ1RC4BkIpHC0FL591KGWx1/2660hTNLhupYwEld7OY=;
 b=V/BcfDHhRaop7P2WbPy5UJfUSQniq7hrwtSqF5I1LNXXXodSzZ+ewNNuBDfjZqp7GX
 enrACav+oltjDiu8SLV/NSod7+noJPGw9WSO8EfSFS0s2vRIyazYvWOCxTm8ljsxwefp
 vY9CAAzSnEBX9AdBJERAU+9ZpN6s7U1cxljY1g/+lmeDgd1/buyUBNe0bOlQ39NKKw7K
 V6YZX0pfYshH59cUyGT36Etps06z1BlQRVCnT/eFFLsy4tfCAbdr+twXl/9O4AcwiDDS
 TJTGupOqoTUo2BAe3od2gKu4xDo4H67JSznZ6XxArhQ/lqVS2LEh5sjv2YcddUM20PQX
 UeQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aZ1RC4BkIpHC0FL591KGWx1/2660hTNLhupYwEld7OY=;
 b=PPlDvCFgBgc2LOJ1f8Vw2ajyttf2mQjIwgFnwQh4gXkqGFmp+0RXpGevCybkipV/kJ
 BGRCi2VdaaoWbcSsMXd7qun9xl7f+QzBIsfMCMbi0b9KzJi7b0PuSfbfEI84K8kLqkyO
 sqyXSYKbbcm0zTkP2nhnGR6XBS7OuJMBy4/WC9ImW++5pOlLpFGaKjoNs0UMTdO0THAi
 sjUjjZ8EEPOgVBAZcpCOzMrvKK6Z0LZRLdK7znSs8Fvoa8VMoxizirOifZ7X9ruJ3wAw
 E1loPSodYHLXCG47V5GMzYlj9clp1fwqAHwqcEqpxh9kwlxnuP7mgu/PLkD8RqaUIYIm
 ZeBQ==
X-Gm-Message-State: APjAAAXd5Xgn1R7RAPzcusw3tBhFVsc/87tEjv6OHMDv4VsywqThVFyT
 p50fwSzA3OLW0FCNJQrH4kMuEm2t
X-Google-Smtp-Source: APXvYqwgndbp5tW3hho3iTltSKTY0S17GnaToCkFD5VagVEFWpFYEB4to//dDe7ZPR5bbBEePdFHXw==
X-Received: by 2002:a2e:8455:: with SMTP id u21mr5634289ljh.20.1562933163317; 
 Fri, 12 Jul 2019 05:06:03 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 20sm1432831ljf.21.2019.07.12.05.06.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 05:06:02 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 12 Jul 2019 14:05:49 +0200
Message-Id: <20190712120549.27778-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190712120549.27778-1-zajec5@gmail.com>
References: <20190712120549.27778-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_050605_347208_543772F5 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 3/3] ramips: get rid of
 platform_pre_upgrade()
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhlIG9ubHkgc3RlcCBi
ZXR3ZWVuIHBsYXRmb3JtX3ByZV91cGdyYWRlKCkgYW5kIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKQpp
cyBzd2l0Y2hpbmcgdG8gcmFtZGlzay4gSXQgc2hvdWxkIGJlIGZpbmUgdG8gIm10ZCBlcmFzZSBm
aXJtd2FyZSIgZnJvbQp0aGUgbGF0ZXIgY2FsbGJhY2sgYW5kIGdldCByaWQgb2YgdGhlIGZpcnN0
IG9uZS4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4K
LS0tCiAuLi4vcmFtaXBzL2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggfCAyMCAr
KysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2Jhc2UtZmlsZXMv
bGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggYi90YXJnZXQvbGludXgvcmFtaXBzL2Jhc2UtZmlsZXMv
bGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKaW5kZXggYzcxZmZjMDMyMS4uNGVhYWZmZTAyOSAxMDA3
NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRm
b3JtLnNoCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvYmFzZS1maWxlcy9saWIvdXBncmFkZS9w
bGF0Zm9ybS5zaApAQCAtOSwxOCArOSw2IEBAIHBsYXRmb3JtX2NoZWNrX2ltYWdlKCkgewogCXJl
dHVybiAwCiB9CiAKLXBsYXRmb3JtX3ByZV91cGdyYWRlKCkgewotCWxvY2FsIGJvYXJkPSQoYm9h
cmRfbmFtZSkKLQotCWNhc2UgIiRib2FyZCIgaW4KLQltaWtyb3RpayxyYjc1MGdyM3xcCi0JbWlr
cm90aWsscmJtMTFnfFwKLQltaWtyb3RpayxyYm0zM2cpCi0JCVsgLXogIiQocm9vdGZzX3R5cGUp
IiBdICYmIG10ZCBlcmFzZSBmaXJtd2FyZQotCQk7OwotCWVzYWMKLX0KLQogcGxhdGZvcm1fbmFu
ZF9wcmVfdXBncmFkZSgpIHsKIAlsb2NhbCBib2FyZD0kKGJvYXJkX25hbWUpCiAKQEAgLTM1LDYg
KzIzLDE0IEBAIHBsYXRmb3JtX25hbmRfcHJlX3VwZ3JhZGUoKSB7CiBwbGF0Zm9ybV9kb191cGdy
YWRlKCkgewogCWxvY2FsIGJvYXJkPSQoYm9hcmRfbmFtZSkKIAorCWNhc2UgIiRib2FyZCIgaW4K
KwltaWtyb3RpayxyYjc1MGdyM3xcCisJbWlrcm90aWsscmJtMTFnfFwKKwltaWtyb3RpayxyYm0z
M2cpCisJCVsgLXogIiQocm9vdGZzX3R5cGUpIiBdICYmIG10ZCBlcmFzZSBmaXJtd2FyZQorCQk7
OworCWVzYWMKKwogCWNhc2UgIiRib2FyZCIgaW4KIAloaXdpZmksaGM1OTYyfFwKIAluZXRnZWFy
LHI2MjIwfFwKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
