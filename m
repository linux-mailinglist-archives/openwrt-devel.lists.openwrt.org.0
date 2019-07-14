Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D3C68128
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 22:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ImPi9JZSykZy/J4v8l2bfE0nfSYNgeBT8BD6x1eyj+U=; b=BQjbKM+Nspf55x
	lKQLO8rT+2xXJ1/A2urLv/W/vHPNFBRhsALIwh+Y8NyUPC92/mh+tgm0wvdEuYOGxKjO4q2oxzf7D
	4Dl4sGY/LavVSiksuw9H3go4TZCb5keDyum2YK2khcmWGSHIRmMbNGGjLPrmBo1YQXt9ULzRB9EXR
	QXD/ZGHd1Lsv2cfv6qnL0JLEJEuE02PXgWFViX41H2H8nxH07sJDOLvk2dnTE44sqryPOwqsFmc9W
	EkTJhIqzpTTpFsPntJxG8n2TgzLxq3yp8aEJGqrgm42Irf8IVJhq/uJHkzfANEZLuk8GlRBKXFJAO
	S7bPjzi9fKxDAc2voyAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hml3a-00027z-2T; Sun, 14 Jul 2019 20:25:14 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hml3O-0001ZP-JJ
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 20:25:04 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so5290877lfh.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 13:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ZGQPP1BRomf+QlBUjS34f15mDKhuonFlMc+orQWSCQ=;
 b=bd+EJdehrsxcoAhPyC/lxfafTzBtBIEzG0YQokfWWzsKx2+AUS2OTzwyjGjaYiQCVR
 t0QAewmjbmj8mTQnj0V0HedcopqNLUC7xNS4qjIJWKqUJYSW6J0bfIDHmqBdTJvoHyPe
 MSKRG4RyGxVvNI/AzQA5SCWmDZTs1kcio467VypFUBQ8QUngrSLlZOj2CTwt/ZeqJRrQ
 3/tDZE6lozwriaNl3uiHiGDrDQsop88xTYCkpY9zPwXiAspyaVOOvehjxHMFVknsUbQa
 1hVoX460MFv9KR3UjPqUNWt6W31ty7aCz0qy2wvnFxf8CEUsBSKerBwhcyFb128IlT+F
 zJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ZGQPP1BRomf+QlBUjS34f15mDKhuonFlMc+orQWSCQ=;
 b=gAPKk3cCXdVd5+jkpRLahV5OOTv7HR/4fU/DDI3T2n6xf5WXHy00KZ6YcPnC1/zqUZ
 Pe2sY79RwnAICqc/p8QiSqLaLMSbSY7VYdMnjo67TtAUOjqNlOdzu2+A4ZNMwKP/H2/v
 0XdIu5hzoq7V29hvRuww8dgRRuRGKPRR9zvUjxQWHArJrG2T+OfkwX8blupQ+CFb5zph
 g5O7FBS/ZtugQ7M9+jeypBknZx59yR2LVE4cojzdEC3OqneLHVPpNYVy8ucZyhK7xKSg
 2E+EUjiUvcNyuCe4A6PoIs+lHb/6atpiRuS2Bd5z97q9QfL+X9pzCBrn2f/3NEL94W5S
 6dYg==
X-Gm-Message-State: APjAAAWhRH+thszgA+JKP0anN6DJFyuOxoDVqa1dYrwYopTF0HGeztIO
 vj1o2JjbWZpIOTRSxNFKAjlpWiUv
X-Google-Smtp-Source: APXvYqxgygQoDYNlofTwOSUukz2o6E1JaZmJNIb74JGztt4o63XYziG2NmUOfhjusCPkG1119OheLA==
X-Received: by 2002:a19:e006:: with SMTP id x6mr9491826lfg.165.1563135900101; 
 Sun, 14 Jul 2019 13:25:00 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id x18sm2025028lfe.42.2019.07.14.13.24.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 13:24:59 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 14 Jul 2019 22:24:54 +0200
Message-Id: <20190714202454.21444-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_132502_670528_FB16A0F6 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] libroxml: bump to the 3.0.2 version
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKKiBGaXggZm9yIG1lbW9y
eSBsZWFrIHJlZ3Jlc3Npb24KKiBTdXBwb3J0IGZvciAodW4pZXNjYXBpbmcKClNpZ25lZC1vZmYt
Ynk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBwYWNrYWdlL2xpYnMv
bGlicm94bWwvTWFrZWZpbGUgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvbGlicm94bWwv
TWFrZWZpbGUgYi9wYWNrYWdlL2xpYnMvbGlicm94bWwvTWFrZWZpbGUKaW5kZXggMzM0Y2E4NjEz
My4uZjYwMzEyYjFlZCAxMDA2NDQKLS0tIGEvcGFja2FnZS9saWJzL2xpYnJveG1sL01ha2VmaWxl
CisrKyBiL3BhY2thZ2UvbGlicy9saWJyb3htbC9NYWtlZmlsZQpAQCAtOCwxMiArOCwxMiBAQAog
aW5jbHVkZSAkKFRPUERJUikvcnVsZXMubWsKIAogUEtHX05BTUU6PWxpYnJveG1sCi1QS0dfVkVS
U0lPTjo9My4wLjEKK1BLR19WRVJTSU9OOj0zLjAuMgogUEtHX1JFTEVBU0U6PTEKIAogUEtHX1NP
VVJDRTo9JChQS0dfTkFNRSktJChQS0dfVkVSU0lPTikudGFyLmd6CiBQS0dfU09VUkNFX1VSTDo9
aHR0cDovL2Rvd25sb2FkLmxpYnJveG1sLm5ldC9wb29sL3YzLngKLVBLR19IQVNIOj1iNTVmZDYx
NmEyYmU0ZTk3NDcxNzNiOGRmYTRiYmFiNjRmNWRkZmFmZDdkN2E1MjlhYTkxYWI3NzU1YmMwY2U2
CitQS0dfSEFTSDo9ZWQ2ZDY4ZDFiY2VhYmY5OGU1ZTc2OTA3NDExZTJlNGQ5M2IyZGJkNDg0Nzlh
YjQxZGVkZTg1MWY1OWRhZDZhMwogUEtHX01BSU5UQUlORVI6PUZlbGl4IEZpZXRrYXUgPG5iZEBu
YmQubmFtZT4KIAogUEtHX0lOU1RBTEw6PTEKQEAgLTI3LDcgKzI3LDcgQEAgZGVmaW5lIFBhY2th
Z2UvbGlicm94bWwKICAgQ0FURUdPUlk6PUxpYnJhcmllcwogICBUSVRMRTo9TWluaW11bSwgZWFz
eS10by11c2UsIEMgaW1wbGVtZW50YXRpb24gZm9yIHhtbCBmaWxlIHBhcnNpbmcKICAgVVJMOj1o
dHRwOi8vd3d3LmxpYnJveG1sLm5ldC8KLSAgQUJJX1ZFUlNJT046PTMuMC4xCisgIEFCSV9WRVJT
SU9OOj0zLjAuMgogZW5kZWYKIAogQ09ORklHVVJFX0FSR1MgKz0gXAotLSAKMi4yMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
