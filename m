Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5EE5108B
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 17:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FphOAkiKr3wl2iLlTNWhAid4qZWqjWSSq9dCu337WOE=; b=udm/ZXrpqLLnGx
	aJaO0KF61cQqddT6t9PcDHVrmQm7y3/FIL35Kjaqa8HUu8dudlgQ+RNYgG0LRcKufYU74vAPgjQTM
	jVLUMtGvEpbGV/oYcevSPxpU8iGV+8YjtSANJGbAmQ9jiwJUesk9IAM75wAfk7H/8NGpPgfZX789P
	dnTbmIAslbLOZ14hm+kbBxfK4ddxCURWUdSRYhYCeLnmU5bJ1LQn4C8H5KAedNLN11iXsrM+zoJf+
	gbfsqtDHAdyX5fsScVeEmhNgR0wPQVrFIT9ZmL4x3C0zUIxvoa5hdUpOb7S/1euqoPk0tfI9eZJjI
	LhydzE4a+Fg1WNHzJV6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQxh-0005ze-7v; Mon, 24 Jun 2019 15:32:53 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQxY-0005zG-H5
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 15:32:46 +0000
Received: by mail-ed1-x542.google.com with SMTP id i11so22428790edq.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 08:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=Qcm34Da2yaXn5kAg61YbjyYs5Dkh2W8W9s17uLM4ISE=;
 b=jg68Ea+mq1VG98Th56zl/0jsTjTjY5hr1FDikwB/ooTX7DLezVILWsPndlZL3sICKU
 9W98Vjpj6YP8rftrLEtUFZZuOXF0YZav5v1WVqB0MuYis+7fuWvFaCK5n47Q4cXqTc2g
 0ZhYoaEB/9BjjMuQHKrz1gS2PTF6/mSAfJnXSKVXFg3zYa+6btRg/lHiY3YiA6iw6bqz
 oBNzpkSSInGoqaEqQlIDJDRCGZA7+JPZgwdeFBSRq6MbjVC8ahoewJq+3lYljTWq8rjb
 N6oUzay+DxOlQz/1sCx1W1Xr+mZUCeEn5Nmk6LDM8NKuvmrO7rLJ40kxTp0yPecv+ZAn
 uifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=Qcm34Da2yaXn5kAg61YbjyYs5Dkh2W8W9s17uLM4ISE=;
 b=tG6PGzRd/HNt9yR9TQ3Kmh9of4VVpTw1Z9qqbZCcriEbpzrIUEVEWIqoa51h3lMev7
 ApjYszf0dBe/W9M/ORRbNtwkg+oUHhF4hIcg4c0DgXx74IJ5a20/GN02bsMr+0JyTRs6
 PiRUTXRRZ3Srah3cuubSwnurrFCnKXmRWcQm9juWnazaJDcJWporhcYO43OLq3YzwA4O
 CPqbBetrPbzQB/6OQ8DzsH2p8tn3HaA+5mQ/HFAFL26MU08C4Q9IDPoCrk/1ZWQZXAal
 82Y0SrTnFqArvFSSjb1earHsZ8HZB/my2lu+LTmJFa9mU4p2H62IlRNhO66nonhc2exJ
 78gw==
X-Gm-Message-State: APjAAAVBjU0RTRQyWnz8KaT5zS5JvR21Tu3/rtJ7v/2Ts5tEUVhjsWMq
 +Sk2fluhoUGTyWj7papaNaFUTxHZ5t4=
X-Google-Smtp-Source: APXvYqwRc1KI5r8ocvbfgKenwD8qb/apEPZ2KJj6v+iJLxgQbd9nTsRjvH36npqFQ9+gCQI7c6vqIQ==
X-Received: by 2002:a50:9431:: with SMTP id p46mr147188682eda.38.1561390361432; 
 Mon, 24 Jun 2019 08:32:41 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id y20sm1990714ejj.75.2019.06.24.08.32.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 08:32:40 -0700 (PDT)
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
Date: Mon, 24 Jun 2019 17:32:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_083244_617071_E50A92DF 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Ben,
Hi All,

So I'm going to give this another try ..
As the IBSS functionality is heavily advertised as a delta to mainline, 
it would be very nice to get it working also :)

Testing the latest ath10k-ct driver and firmware seems to be a step back 
compared to roughly a month ago.

I'm currently seeing the firmware crashing, which was not the case before:


ath10k-ct + htt-fw:

https://pastebin.com/raw/7Sy9yx6s


ath10k-ct + non-htt-fw:

https://pastebin.com/raw/bqVqQmXq


Mixing upstream ath10k driver with the non-htt CT fw does not work.

Errors are seen here regarding missing IE's and stuff.
Also IBSS functionality is not shown when running 'iw list'


Kind Regards,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
