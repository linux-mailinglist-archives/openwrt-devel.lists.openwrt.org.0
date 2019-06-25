Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1657454E27
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 14:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A2MYpzP8Gbsp6l10YkWHX1jqILsKXnJPfG2QwHgnYgk=; b=kV+k00L8UW8VpY
	ej9hAaH3J6AmclGAoBaT7ettoIfhGdK+u5NuX6blL5hRL4hPz8BmUOBo66BTP8dQnCDtzh4UY8vJP
	KHMKsWx1uZbY7k6ijT/qMuIy4su1aQn00fGTGsbfH6ikvzE+Xw4A1iAJlt6RbuyDbBlC2eavvA5Hn
	SAaDn0avdaBWM8gNkPuCcyCXE0dCtQC+sB7y1ZCAgrphBk++HbalU5PlnrsdSHMo4XCcqoTL/nTWD
	jrA5zVtPkMHVTPErpLwZsWr4+fUClVogZ/d8k9sXA3uRrp/xjpAWFKIIqHXhl+pF2qx1ArHbq00BF
	fx83SbFpJw0TQ9YaRY8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfk98-0007ie-EI; Tue, 25 Jun 2019 12:01:58 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfk90-0007iI-IK
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 12:01:52 +0000
Received: by mail-ed1-x52e.google.com with SMTP id w20so19174100edd.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 05:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=8HsqIqwRpvD57kY80aKAqByd1pFwQH00e60VdgvoPSs=;
 b=QdJzSmKTQ+WpVSPzVZmygM9S6ZAosf/xhFfh6sWwhBSxI2nyipYIXO65XIcXGbuTym
 /PQq0o9ueRxx6rn9V++du933wMZ210e6SrEtRKa6T1zDSnAUWqx9hH/xaqWVkINeWJqt
 8qbFAVnJMvx0xeGqyjfGptchs+gFzZ456ZdQui8uiPifqSFgAAjKOuhhjaBOscA4EAjx
 kwQpZkkYE2sVncUYitqhSdKx8F5NveNcBRKva7R4Tg8vvtK634V2GKbHALmdC2DKFvB0
 sx2+RXNGkuYumKINN8Zgaox7xXgZR8ZBP350rlr+dze4NzsHzc5ZFiqgC4GsaNvoz/jV
 MiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=8HsqIqwRpvD57kY80aKAqByd1pFwQH00e60VdgvoPSs=;
 b=Pjl6qx8kBrXQtDvdfP/UVXo2ixTtb5qGxi4LYvt4HEP30L5IOWEKCkPJ9YqzP08NJw
 xybLfkI621Edsb/EfxOUc0SrSFLaZ5gNrejmtdFwbiWFN22pCBxrLZ3DYZ9CD51a7WKt
 tQ24oaGWs6aH40HshkgOC8AJHLNyFZUMxQhDEqwAaXzH0ezdrtuRuUaOZefIWT3kiYBY
 FczFCdVdDwNM/oaPxYpFoQJ/QyVBAiFbUg8i9PDjTjryFk5Hb5fpRH375CmSvaKlqETl
 MrlDEqHUAwgYDkLdRWxSAkFlrlfEhEb0GSKT2YWdHgvL6KftNDrmMSsNxhxW3PdHzmZq
 4CYw==
X-Gm-Message-State: APjAAAU90t7swg+kYsc1NYI6yRYlAxhRZg6wDVVXMDmfRMLRH2QvFwSC
 +NCCidxHJH2Kn+Aqg7jsv8LscKwbyosiCw==
X-Google-Smtp-Source: APXvYqzczWdLMeMrCfchb4sP7xx+PLmH0FQAzAlRYOO33pYTXzadF9EsWpeM8bPm2H8YYSj9BwVuFQ==
X-Received: by 2002:a50:84a1:: with SMTP id 30mr67234226edq.44.1561464108431; 
 Tue, 25 Jun 2019 05:01:48 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id v1sm1624092eje.1.2019.06.25.05.01.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 05:01:47 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <131c2a10-eff2-c655-f820-95ded3bf24b7@ncentric.com>
Date: Tue, 25 Jun 2019 14:01:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050150_632587_AE765CEB 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] 19.07 branch - recursive dependency
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

dG1wLy5jb25maWctcGFja2FnZS5pbjo4ODUxODplcnJvcjogcmVjdXJzaXZlIGRlcGVuZGVuY3kg
ZGV0ZWN0ZWQhCkZvciBhIHJlc29sdXRpb24gcmVmZXIgdG8gRG9jdW1lbnRhdGlvbi9rYnVpbGQv
a2NvbmZpZy1sYW5ndWFnZS50eHQKc3Vic2VjdGlvbiAiS2NvbmZpZyByZWN1cnNpdmUgZGVwZW5k
ZW5jeSBsaW1pdGF0aW9ucyIKdG1wLy5jb25maWctcGFja2FnZS5pbjo4ODUxODrCoMKgwqAgc3lt
Ym9sIFBBQ0tBR0VfbmZzLWtlcm5lbC1zZXJ2ZXIgCmRlcGVuZHMgb24gTkZTX0tFUk5FTF9TRVJW
RVJfVjQKRm9yIGEgcmVzb2x1dGlvbiByZWZlciB0byBEb2N1bWVudGF0aW9uL2tidWlsZC9rY29u
ZmlnLWxhbmd1YWdlLnR4dApzdWJzZWN0aW9uICJLY29uZmlnIHJlY3Vyc2l2ZSBkZXBlbmRlbmN5
IGxpbWl0YXRpb25zIgpmZWVkcy9wYWNrYWdlcy9uZXQvbmZzLWtlcm5lbC1zZXJ2ZXIvQ29uZmln
LmluOjQ6wqDCoMKgIHN5bWJvbCAKTkZTX0tFUk5FTF9TRVJWRVJfVjQgZGVwZW5kcyBvbiBQQUNL
QUdFX25mcy1rZXJuZWwtc2VydmVyCgoKQW55b25lIGFueSBpZGVhPwoKVGhhbmtzLAoKS29lbgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
