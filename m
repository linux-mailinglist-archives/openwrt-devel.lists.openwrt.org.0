Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068CEAB1E6
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 07:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PheYiOCA4iJkboUVrtz7guO1jSFjckjNOcBTbbkJrVk=; b=MPLg4mpyITISKP
	+QpL8PWdV8rAjKIRJ3RLM5D0Ca33woiNT01y1+hPAN5Dl1HtzGaVcUIQ1vIlUGQHaYEjTklk1IlXN
	TErnVU1aFib7duivOu4bzAxTYB5rboakNd6/YlpLXnSVJ8CYfrLHpJihz9KakaeADABkp+7Q5ydtL
	rc4hszgxCHJs4RxAxV8OlgplDoVjSfgCXLom++TL+HuKx4/l9JDG/xcWwKygfQoUf+4Bhs65w4AOa
	tf65MwiMp0hyTowTqriffz/Prs+8pUFjf2KFFjGWkjOUIfQBzcMB1gxhUzPYcQHKynQos4LyY/szb
	LHqA14+npUzKCLeyZhig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i66X8-00071q-8F; Fri, 06 Sep 2019 05:11:42 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66X1-00070l-4Z
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 05:11:37 +0000
Received: by mail-lj1-x232.google.com with SMTP id a4so4761083ljk.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 22:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dC5tqQvnnzXJ9fMy37j7rjA+Ya61fbJ17eOTkdeRhqw=;
 b=o4y9VnVUFpUXAEWoaHS1uwCox+d/vSmxpNQBwTiIlKreK2yu1OOjKYTyl76TVuFYMN
 HMtWw2nNNszRyucnzpKzBb6+r4iUxEKRRuIO29ewfCspN3C0P1mbTKCz4gAv2TUPwvGL
 2r+pOqwBEme/y1BTDyA8FoMk3v7dujcugImAg/DZLOOEDfnXqMTJvABNAf1nnr1ZmG6l
 ehggZnXd5OwwT6/IKl5T1OmvgfhDfx+vfwIHsbXmk+0+jVUkz3z411obEsNyQAIU8O5a
 xcQrzkV1wXdUWZPUO/cYM6gr+7ZuXiNKr/EjSGKIf/rHXX/CbICcMCzF2yYpw8vPvRBQ
 ciww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dC5tqQvnnzXJ9fMy37j7rjA+Ya61fbJ17eOTkdeRhqw=;
 b=eNU+HLDPsvZZ4LSMERBzv0AHCE0rAqBYH5lketlag3hTxwy0lm42zyaeFYXNzLF2/2
 gJ9JwTvFZmfo/JQYZyAPTubXfajV9QfL6XtdwduTsEvxsJcD2tawA1H8wbOGp/92h3yF
 cnJ9RP7dAoB++tJt9HZ04EZAipeBGq5RH4Dn1y1nA3GyiysOIlE47TNZGMPgeoDHWhBo
 7xxZgjHrU/UaEzfhyJgvthBn8yHmXQyDncIZGhup8588X6wYUeZEXAuQF8fZ7p10ppIp
 Ac/LV5Hv2gVIX9bb6hLiPZS7rhIq3buEDOcCtu5FMPI/ee3qpOB+C+NaR68tq+nvWjU+
 n+cg==
X-Gm-Message-State: APjAAAXlpcMPYLE8HbsrJYueVQgvMRGVcl39bc624bmRF3MZvlT8g8NO
 kRe7FeaNhLrEEuObDJ5zdByT5Ow+
X-Google-Smtp-Source: APXvYqyf6tkJOi6m4RC/YXYqJ3cUPhbMSH7+pVp4A1KLGENvGaFzbcpv+UCdiGRMCQu9CUA6D9HUQQ==
X-Received: by 2002:a2e:99c1:: with SMTP id l1mr4585606ljj.8.1567746687069;
 Thu, 05 Sep 2019 22:11:27 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m10sm869405lfo.69.2019.09.05.22.11.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 22:11:26 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 07:10:51 +0200
Message-Id: <20190906051054.18311-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_221135_188002_D43F6F93 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/3] sysupgrade: support custom backup paths
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
 Jonas Gorski <jonas.gorski@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVXAgdG8gbm93IHByZXNl
cnZpbmcgYSBiYWNrdXAgb3ZlciBzeXN1cGdyYWRlIHJlcXVpcmVkIHVzaW5nIGEgbWFnaWMKcGF0
aCAvdG1wL3N5c3VwZ3JhZGUudGd6LiBJdCB3YXMgYSBiYWQgZGVzaWduIChoYXJkY29kZWQgcGF0
aCkgYW5kCnJlcXVpcmVkIG1vdmluZy9jb3B5aW5nIGFscmVhZHkgZXhpc3RpbmcgYmFja3VwIGFy
Y2hpdmVzIGluIHNvbWUgY2FzZXMuCgpUaGlzIHBhdGNoc2V0IG1ha2VzIHN5c3VwZ3JhZGUgbW9y
ZSBnZW5lcmljIGFzIGl0IGFsbG93cyBzcGVjaWZ5aW5nIGEKY3VzdG9tIGJhY2t1cCBhcmNoaXZl
IHBhdGguIEl0IGFsc28gYWxsb3dzIHNpbXBsaWZ5aW5nIHRhcmdldCBjb2RlLgoKUmFmYcWCIE1p
xYJlY2tpICgzKToKICBiYXNlLWZpbGVzOiBzeXN1cGdyYWRlOiBwYXNzICJiYWNrdXAiIHVidXMg
YXR0cmlidXRlCiAgW3Byb2NkXSBzeXN1cGdyYWRlOiBzdXBwb3J0ICJiYWNrdXAiIGF0dHJpYnV0
ZQogIHRyZWV3aWRlOiBzeXN1cGdyYWRlOiB1c2UgJFVQR1JBREVfQkFDS1VQIHRvIGNoZWNrIGZv
ciBiYWNrdXAKCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
