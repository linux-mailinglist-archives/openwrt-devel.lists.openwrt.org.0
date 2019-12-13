Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD0711E192
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 11:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0YnWQFL3wp31uxUFXhs7Ixia87KC4TcIIJ2Os+szd2k=; b=oS1IHk+RYltTVP
	h5sWZ2jgWGuKS5WIWo4bNLg7pFsI1Ezt9R7MQfMY9uKO/u2KfZVCwomFsK/9hFbXYdoLYfoOqNLxR
	TLu1shXOpFTwL8dULLILpeo8MrEh6vnIsiSiUwI24xxAubqHIcwezClXHiXEbvb42OcQCAWF/BY9l
	ndL4xejP2059A0TDamTpGd2jA3UF1h7IgY3ogUTw/V1ylKXZhVpXtygM3qF47IA/0mjE9ccFC1DmL
	e/n7dtrjPttk2Y31DyFc4TUTImroGVGHiqptY18e8cjQaqBejaUBU0OxF+IQ2dui3Xq5l4Es+TbwH
	FBpgHNQ7KIZeRR4I3z0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhpL-0006Yt-2m; Fri, 13 Dec 2019 10:05:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhp4-00068f-Uv
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 10:05:27 +0000
Received: by mail-lj1-x244.google.com with SMTP id 21so2018012ljr.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 02:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tb5QWqXehQuKyUGe7VIO34+yb49QQcW4aHEj1YFXGy8=;
 b=b9/JudFO4U6YfDS0kV0c+2YRx70TSiUv+Al9BOeItDTwyWkJlSJ38PMRXN5IlyKGXE
 5Vmptqi9IqToi++SZOjxepzS14BRswy3FhFWAdpyPdZiCftF5ecvg35fLvdTqIdoB9Jx
 VWkQfpsBQgKzQSxQghqRSaYCiRnuvRYMKyWRIofxTqBZ8OK1DSL1eEEhDhwOVs7f6sLY
 IBWxxjWqqAWbqrzNeMBASP0Cv9/iBQt/u08VIq9aalbs0t/pLaEuWI6GsOU41um+7wzs
 P5GcvSKtF2GXLiKa4q61Wlhox76fSwSbfVPOOh32XNxzLa4oHT7YqZbcIYA0NNOy7CqB
 JRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tb5QWqXehQuKyUGe7VIO34+yb49QQcW4aHEj1YFXGy8=;
 b=t23FGTW6Xyp/1UUSOcYu+wUDDk9IBcLr9fVRSPyDfvBzbko1FEbveztYq63FkUR8fK
 MWfKVVuQxoTj996pvSGlOwQUOodBjEjQNdexY31F54ppHtYljzHu4JLtqdn8O/wABVib
 EIgEOMygVHrsM4U3Md/t6qfHYMoA0lqQlCytk/g/gg5/K1MIzAkxrBlSdt+MLWDVfwpt
 3uOCfV8S8QJGZs1Mz6SLDy3KJhURmzZIU/UNwlIyPj7z2WDxPqB3eiav9rqPbrJTBvct
 Q6xVBE9rU1XDpkpcoBTdkHD+Mr33/VYTLVtZ1vMme7gOvjQ1Me0uGc8msHpukzKtyM8X
 nWZg==
X-Gm-Message-State: APjAAAVOvBy+LFRtucPaxOxlzNr5nIVaGLXFqjVtZ/Hi9W9CAocBswvJ
 CHV6NH0J0jrzRNNjjcHPo1Ekl03+
X-Google-Smtp-Source: APXvYqwa5yg5vf5ylETp2YLYjM0iL3jrzMYLDqa5EKqD6E8uu4WOGGju8tI4TleL4YOGd/pBFq6tXg==
X-Received: by 2002:a05:651c:208:: with SMTP id
 y8mr9168685ljn.36.1576231518321; 
 Fri, 13 Dec 2019 02:05:18 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id w71sm5021438lff.0.2019.12.13.02.05.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 02:05:17 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 11:05:10 +0100
Message-Id: <20191213100512.31373-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020523_299095_FBB21AA8 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH fstools 0/2] blocd: fix vlist holding devices
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
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSSBub3RpY2VkIHRoYXQg
InVidXMgY2FsbCBibG9jayBpbmZvIiB3YXMgbGlzdGluZyBvbmx5IHRoZSBsYXN0IGFkZGVkCmRl
dmljZXMgZm9yIG1lLiBJdCBoYXMgYXBwZWFyZWQgdG8gYmUgYSB3cm9uZyB2bGlzdCB1c2FnZSAr
IG1lbW9yeQpjb3JydXB0aW9uLgoKQWZ0ZXIgcmV2aWV3L2FwcGx5IEknZCBsaWtlIHRvIGNoZXJy
eS1waWNrIHRob3NlIGZpeGVzIHRvIDE5LjA3LgoKUmFmYcWCIE1pxYJlY2tpICgyKToKICBibG9j
a2Q6IGZpeCB2bGlzdCBtZW1vcnkgY29ycnVwdGlvbgogIGJsb2NrZDogZG9uJ3QgZmx1c2ggZGV2
aWNlcyBsaXN0IG9uICJob3RwbHVnIiBjYWxsCgogYmxvY2tkLmMgfCA0ICstLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
