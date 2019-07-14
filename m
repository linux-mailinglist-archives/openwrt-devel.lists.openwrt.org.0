Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619FF68120
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 22:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5GiL1KLEnNSdsJCfZCTaRFhYRz283ORRL9EfxSznbyA=; b=gs07EoQ+XLizF4
	/eolteDKyqbkhMZnickBIbSxrN2MsBjpeHOqdYrHOrH5qiD8hmAJiceKcSbzhStuUNWjOqa1gDoKZ
	U5F0Kj2y398ZQlfg+3ifYUIvrmpwHhixZvDbu3eYuL+afviJ42m84+Pp3Xqs9XsF89IOtut40EdY1
	sTuPSDnBKVNjpLI47izcUquFFn9nALdJtcd4aWyslGC75puQ1LqdKPdOwruiRHUNIuWUx3bR+6lG2
	os8wYLH4j4T9D0ChPY+r5eH4IpxhSPa2vnEW09/3R/ugW3ixLMgGmWPDiwM/sNJzPbSVn/iHeAXH7
	e+IdVO5Ma4Y8zMK7/LNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmkqp-0006qO-SW; Sun, 14 Jul 2019 20:12:03 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmkqe-0006q4-7S
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 20:11:53 +0000
Received: by mail-lf1-x12a.google.com with SMTP id c19so9573303lfm.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 13:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+RiNwYrF9rJS6RV1t9z23qPaExYEGNx3AePzHCWVbY4=;
 b=dVSLOFLEdCshwQdClRY/rJJZnP2e9jhpWB6vOXZAeFU9CbQRtZD9+ql8mSRo/gLwFb
 glvA9LliCXJ4T4ogl0CEjyagc+UdxT2GuE1RNISpOe4im2GskgHtKhyXtg+Z6tWvKn/6
 +gJgW6Rr4RwipqwwhrLEFEfJHvgYu+f6wHmNnsmjO6OcEeg1AgPihyDNlEYXdv/xeY7v
 qmPAtaoSTjq4KFSYSguixWWnGYvHfiuc/t5Sh/Y8Ajlk43AnhdGpUr7jRP/ZLrjzqnfo
 4Or0JecgAJD+eTE31FBX/D3bPV4RHtw307Ts6cJm8LvbQpuUV9UG6GBcF1cg1qFTFlSI
 sriQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+RiNwYrF9rJS6RV1t9z23qPaExYEGNx3AePzHCWVbY4=;
 b=O2fqpI1gbNJktURw9MgXOOmCP9F4BRuQLzWsFaj79LFh4kgVGBhx/+dpMCCltU1PQ5
 lzNP/Fw/+c08N4j64Nm6/Cc6YlCsqGq/gRxj7vwo5RBcceTTI0kZW1+v+F4/48sta43e
 z0NSza4c1Va1+dWTtViblvbMazu4YcMHib14qjy3Ocgh3gsI5H/aQOnwovuglAZqdXid
 wVHzyOQ/zQQETFsp1c9mnygld3sc3L6P0YvG7DsubhsPwYf7mmITEPFmpTqvRj7+RcSG
 tqBoftsuCTV8BuytIKxL3b0GaDQvoboP/wIosGOFBUOJX5kdp17XWtBy12cOplucr0O0
 8A+Q==
X-Gm-Message-State: APjAAAU5rqVR6S80qZtPHOUmN5LDqqqA6zM61p/ewF+jBpUD/nOjEFgl
 102AR3+bu2L5CemQvCBTjTclPBIe
X-Google-Smtp-Source: APXvYqy/fAxBdKpM+3vGqokCJPrefeqq3zX3cDw8+jIRoe1TZ6AWiaGHPHzlOh4qJHwPDJoebq8KKQ==
X-Received: by 2002:a19:4f42:: with SMTP id a2mr9502063lfk.23.1563135106627;
 Sun, 14 Jul 2019 13:11:46 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f1sm2710772ljk.86.2019.07.14.13.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 13:11:46 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 14 Jul 2019 22:11:40 +0200
Message-Id: <20190714201140.13035-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_131152_271164_5114E95B 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] orion: sysupgrade: change
 platform_check_image() args validation
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKc3lzdXBncmFkZSBwYXNz
ZXMgaW1hZ2UgdG8gY2hlY2sgYXMgYXJndW1lbnQgc28gdXNlICQjIGluc3RlYWQgb2YgJEFSR0MK
ClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiB0
YXJnZXQvbGludXgvb3Jpb24vZ2VuZXJpYy9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3Jt
LnNoIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L29yaW9uL2dlbmVyaWMvYmFzZS1maWxlcy9saWIv
dXBncmFkZS9wbGF0Zm9ybS5zaCBiL3RhcmdldC9saW51eC9vcmlvbi9nZW5lcmljL2Jhc2UtZmls
ZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKaW5kZXggZGIyMzMwNjg0ZC4uY2YxZmFkODNhOCAx
MDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L29yaW9uL2dlbmVyaWMvYmFzZS1maWxlcy9saWIvdXBn
cmFkZS9wbGF0Zm9ybS5zaAorKysgYi90YXJnZXQvbGludXgvb3Jpb24vZ2VuZXJpYy9iYXNlLWZp
bGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCkBAIC02LDcgKzYsNyBAQAogIyB1c2UgZGVmYXVs
dCBmb3IgcGxhdGZvcm1fZG9fdXBncmFkZSgpCiAKIHBsYXRmb3JtX2NoZWNrX2ltYWdlKCkgewot
CVsgIiR7QVJHQ30iIC1ndCAxIF0gJiYgeyBlY2hvICdUb28gbWFueSBhcmd1bWVudHMuIE9ubHkg
Zmxhc2ggZmlsZSBleHBlY3RlZC4nOyByZXR1cm4gMTsgfQorCVsgIiQjIiAtZ3QgMSBdICYmIHsg
ZWNobyAnVG9vIG1hbnkgYXJndW1lbnRzLiBPbmx5IGZsYXNoIGZpbGUgZXhwZWN0ZWQuJzsgcmV0
dXJuIDE7IH0KIAogCWxvY2FsIGhhcmR3YXJlPSIkKGJvYXJkX25hbWUpIgogCWxvY2FsIG1hZ2lj
PSIkKGdldF9tYWdpY193b3JkICIkMSIpIgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
