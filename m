Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E079A775
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 08:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ner888gt0jUBCVrlWpNTebkV6nbJDJPAYXfTLWxojJ4=; b=QCWxiGbZYPXYtZ
	GldPaAJcu1eXSWMvQVuRh5UYEUa4wSyKmh3dGqU16TT0hL46xFRwNtaO9pmOkJMUv50XVQznleJ6a
	Phvucfzua4lpM4AevbfBrPDZs4STS49wPDuKWw8gy5x0CJuyPIDi+Y2eCuu1kxR3ubmxYGcWuU6tr
	KOQfsCApCv7Xg0kqZBI5EMJER9VeI1MA0yjTGjkjMmUvOsGdpi+aTJw0q2BpfKC6RzWucCb0dfqEb
	k52RfxljdRVgl2qZ+H0fYJBb7xMxFxS8b04yRvBFXobn4s5JWsr5f61mhBtoMLdoma258fTUO+mGQ
	GmyohlJIWD27LqFAwvsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i12sD-0007Em-21; Fri, 23 Aug 2019 06:16:33 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i12rM-0006xl-RG
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 06:15:42 +0000
Received: by mail-lj1-x236.google.com with SMTP id e24so7752257ljg.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 23:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2WRay9wDdv3x6NycA/+bzklHTd+Zz/xV5alvxY43SUU=;
 b=DPydDjaVJB9qAtzP5XBNC8I6i64VrqVM3SCZMZk8ERtwURBROuM1RACwANxsb7XwGG
 BXH+KfdxicCLbGyRQIpaXT7DTWc4QzxJMY3ucipbQLHw7HtjIwD4JBRFjBI3NxNARVt/
 fz+V6Qf+77l5q4Xy3+I4crNP3ylCFuVq34Hia1tJJCac+9orD7sTxNw/jsbayJKhAKyS
 /nRHFaSodHMSe7rGmHewztjE55OCUjU1RmUXQIwJatYuz1E1nVtyg+Tnv/ph3tJU1CEU
 VelIesSp1CvtKfxbwNeLc9Lz5Izefax0E+57soyqxCEXBFIRDa09hZx76K2xPEUMTLln
 yqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2WRay9wDdv3x6NycA/+bzklHTd+Zz/xV5alvxY43SUU=;
 b=ZtldsahRLkcLp4TR80CVKLlWVQqXY6tOL4KokOJs3kNmHEy40W4bfkMKFmDGdz8r8s
 LcIUXMAgsMh+jN2YItgS9NBLJvKorPPiRNZXh2puJJNf/xpGJpOfu1ipNlY4gBD9FLdx
 Iu4g3MYsJruD8a4559M0qeO4Okuf7JCbiM28pVRfGHUOTlTnyzZnosFeZoB0+3Xs2v2Y
 p5+ol/W3Q3LP7Q3x8T4JcWOqDAObpT0DY/5E0dR3y5pE6QLINvaYgAa4fYFZUgjAles7
 pgdjJBQZMWAiFYS5366Nfh7r7Co58Mz67q9XgMZ+ZybVYhI3TOVue1IwvGlzmQU9K64b
 Hsyw==
X-Gm-Message-State: APjAAAWnW+hieusIWE5FpaAb/N2JxTe8I3WlSRb9z0xt981FuZoPorG3
 Zu9cmSm6r6Ok22LkaMgfzBp5S7L5
X-Google-Smtp-Source: APXvYqwCwL9/SnQQREdbG1w9IkyRGqRbQFtnHVQIlk2lkF966MvBxrRcnoGMNKzstlR5eyjQltPlnw==
X-Received: by 2002:a2e:2c09:: with SMTP id s9mr1835115ljs.222.1566540938873; 
 Thu, 22 Aug 2019 23:15:38 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f17sm425212lfa.67.2019.08.22.23.15.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 23:15:38 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 08:15:24 +0200
Message-Id: <20190823061524.28883-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190823061524.28883-1-zajec5@gmail.com>
References: <20190823061524.28883-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_231540_880881_D8E2F2B8 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] brcm47xx: extend firmware validation
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
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBwcm92aWRlcyBU
UlggdmFsaWRhdGlvbiByZXN1bHQsIHNvIGZpbmFsIEpTT04gbWF5IGxvb2sgbGlrZToKewogICAg
ICAgICJ0ZXN0cyI6IHsKICAgICAgICAgICAgICAgICJmd3Rvb2xfc2lnbmF0dXJlIjogdHJ1ZSwK
ICAgICAgICAgICAgICAgICJmd3Rvb2xfZGV2aWNlX21hdGNoIjogdHJ1ZSwKICAgICAgICAgICAg
ICAgICJ0cnhfdmFsaWQiOiB0cnVlCiAgICAgICAgfSwKICAgICAgICAidmFsaWQiOiB0cnVlLAog
ICAgICAgICJmb3JjZWFibGUiOiB0cnVlCn0KCkl0IGFsc28gcHJldmVudHMgdXNlcnMgZnJvbSBp
bnN0YWxsaW5nIGJyb2tlbiBmaXJtd2FyZSBmaWxlcywgZS5nLjoKCiQgc3lzdXBncmFkZSAtRiAv
dG1wL2RoY3AubGVhc2VzCkltYWdlIG1ldGFkYXRhIG5vdCBmb3VuZApJbnZhbGlkIGltYWdlIHR5
cGUuIFBsZWFzZSB1c2UgZmlybXdhcmUgc3BlY2lmaWMgZm9yIHRoaXMgZGV2aWNlLgpJbWFnZSBj
aGVjayBmYWlsZWQuIFRoaXMgZmlybXdhcmUgY2FuJ3QgYmUgaW5zdGFsbGVkLgoKU2lnbmVkLW9m
Zi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIC4uLi9icmNtNDd4
eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoICAgICAgfCAxMiArKysrKysrKysr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JyY200N3h4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxh
dGZvcm0uc2ggYi90YXJnZXQvbGludXgvYnJjbTQ3eHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9w
bGF0Zm9ybS5zaAppbmRleCBkZmQ0ZTk3ZWQyLi5jYzNmYWJiN2Y0IDEwMDY0NAotLS0gYS90YXJn
ZXQvbGludXgvYnJjbTQ3eHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaAorKysg
Yi90YXJnZXQvbGludXgvYnJjbTQ3eHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5z
aApAQCAtOTgsNyArOTgsMTAgQEAgcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7CiAKIAkJCWlmICEg
b3RyeCBjaGVjayAiJDEiIC1vICIkaGVhZGVyX2xlbiI7IHRoZW4KIAkJCQllY2hvICJObyB2YWxp
ZCBUUlggZmlybXdhcmUgaW4gdGhlIENISyBpbWFnZSIKKwkJCQlub3RpZnlfY2hlY2tfdGVzdF9y
ZXN1bHQgInRyeF92YWxpZCIgMAogCQkJCWVycm9yPTEKKwkJCWVsc2UKKwkJCQlub3RpZnlfY2hl
Y2tfdGVzdF9yZXN1bHQgInRyeF92YWxpZCIgMQogCQkJZmkKIAkJOzsKIAkJImN5YmVydGFuIikK
QEAgLTExMywxNyArMTE2LDI0IEBAIHBsYXRmb3JtX2NoZWNrX2ltYWdlKCkgewogCiAJCQlpZiAh
IG90cnggY2hlY2sgIiQxIiAtbyAzMjsgdGhlbgogCQkJCWVjaG8gIk5vIHZhbGlkIFRSWCBmaXJt
d2FyZSBpbiB0aGUgQ3liZXJUQU4gaW1hZ2UiCisJCQkJbm90aWZ5X2NoZWNrX3Rlc3RfcmVzdWx0
ICJ0cnhfdmFsaWQiIDAKIAkJCQllcnJvcj0xCisJCQllbHNlCisJCQkJbm90aWZ5X2NoZWNrX3Rl
c3RfcmVzdWx0ICJ0cnhfdmFsaWQiIDEKIAkJCWZpCiAJCTs7CiAJCSJ0cngiKQogCQkJaWYgISBv
dHJ4IGNoZWNrICIkMSI7IHRoZW4KIAkJCQllY2hvICJJbnZhbGlkIChjb3JydXB0ZWQ/KSBUUlgg
ZmlybXdhcmUiCisJCQkJbm90aWZ5X2NoZWNrX3Rlc3RfcmVzdWx0ICJ0cnhfdmFsaWQiIDAKIAkJ
CQllcnJvcj0xCisJCQllbHNlCisJCQkJbm90aWZ5X2NoZWNrX3Rlc3RfcmVzdWx0ICJ0cnhfdmFs
aWQiIDEKIAkJCWZpCiAJCTs7CiAJCSopCi0JCQllY2hvICJJbnZhbGlkIGltYWdlIHR5cGUuIFBs
ZWFzZSB1c2Ugb25seSAudHJ4IGZpbGVzIgorCQkJZWNobyAiSW52YWxpZCBpbWFnZSB0eXBlLiBQ
bGVhc2UgdXNlIGZpcm13YXJlIHNwZWNpZmljIGZvciB0aGlzIGRldmljZS4iCisJCQlub3RpZnlf
Y2hlY2tfYnJva2VuCiAJCQllcnJvcj0xCiAJCTs7CiAJZXNhYwotLSAKMi4yMS4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
