Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C2E151D1F
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 16:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OS1+W35179ztzNLBphREDPuqb5hQF/YJk6Qzi/1pqeY=; b=eWc9xFZy8q2xIiHEVH+lUvIaK
	Znurn6xQ7ghajj+d7r7m5SP7y5EBNuZVw6tAePaaXecOoYoZQhjpDc+e11yzPQ0u90ni/fGIyDA9+
	aqIwovYjV30+KWVgDz/kwbL2tioFyy1okTEqiG0MdK9idXp2AO2kyKz1wHBd9dKsJQBEnQDVJ+qLr
	OHETjGVsEedjRQRJSB3c6JLuYxe1YCXWgfKGjuInZoo4dSVcWon/q3amm+GN6sSEq1bGajw+JUAnn
	73gfzjb2sV5JhgUWU/3y0mnEW+mUMwr9rbPUcgR2OAF7g2ARHIl3ZkoehZrIU2IPsBzi5N3H992dz
	f183fljiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz02q-0002IB-2k; Tue, 04 Feb 2020 15:23:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz02j-000270-8X
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 15:23:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id n25so12514908lfl.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Feb 2020 07:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=blK/qcCVHg5q9qpZ9Gle4vJesuz5jhAU5cDB4wKY7w8=;
 b=IWwlp2MHqAMu4mwSIEMg47EYU0MMibdTisR72roY8MQzAN1xvOyfhPI5q8Zn2s1Gwr
 qdwvB9lCQbgRCsDItOlXiudu++UZGGOqNlM3RJdN/E3FYLrngfMAlESrRe53L+Ojnyva
 0VFJlBKDjivdr9fUfXNoEv8KQrlK/WY7XgEAR/ZOC/EMwReButk48rfVfzZnklafeiqr
 fAw/sudWfPtSiF3yOesU1Y6/rVCDp3jtdrOC7a58MELXfn6ylV1FWap8vm/cYcVLneg6
 g8evn5DOO5W6lPcsxN6Nk7mTPKBuQ9ngF9b/0wBF4HFXe64T+UeX0dxX1rYIygou/n3M
 e5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=blK/qcCVHg5q9qpZ9Gle4vJesuz5jhAU5cDB4wKY7w8=;
 b=QkRngMvarxVshOXBDJUhrPnPxBxgAUoHrPZE6/O7Mjp+smcDIJe0klLvyi2UBsNPdx
 /IDJs/CLkCNtg9je6RGvAVtXLF1CafWfZLMvZCpHOAHwIRCfKJnm01qypttMDUHf+sz3
 EPaVMNMUvEQzSfklqENP60yRHrrb9Og78eVSfOHkPrWzPBuisArUHc/adYahxc45+L/P
 5wbx1yqnz/ECgle3CsbKGHKN1KwGRFwdEp+bmZtN5HD1LKLzaTcFcDIeSh4kdaZwFQvw
 yp5+wjoDGGBGjih0sKZUOg1CdD9zqcc/5pw4p2uJVXU9+m/UxdeXfLhBNWVdgJIVU1/K
 thEw==
X-Gm-Message-State: APjAAAW/OGFvaGRu1yAs75PtsQm9WisGRKGYU4lkvMRrrks4hWfqUrDX
 zV/kEvy9ouKNX//wQLjcz4AwDPr2
X-Google-Smtp-Source: APXvYqyRiSfDSh+fMywdqcdbEFhm4dO2xT3VnXg7Fhq8zNuRMjjR7V1K6a3L6qtXY7ZwL0enagzzTQ==
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr15132383lfm.1.1580829790782;
 Tue, 04 Feb 2020 07:23:10 -0800 (PST)
Received: from [192.168.1.118] ([188.14.113.33])
 by smtp.gmail.com with ESMTPSA id s22sm11942442ljm.41.2020.02.04.07.23.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 07:23:10 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <20200131142254.24953-1-pepe2k@gmail.com>
 <00c301d5db57$2e4ccb00$8ae66100$@adrianschmutzler.de>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <d8e3a894-dcec-c0d3-be87-c1562999e262@gmail.com>
Date: Tue, 4 Feb 2020 16:23:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <00c301d5db57$2e4ccb00$8ae66100$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_072313_305826_7A8F6CCB 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: diag: restore default
 trigger for 'boot' LED
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


On 04/02/20 13:32, Adrian Schmutzler wrote:
> Hi,
>
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Piotr Dymacz
>> Sent: Freitag, 31. Januar 2020 15:23
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] [PATCH] base-files: diag: restore default trigger for
>> 'boot' LED
>>
>> For devices without a dedicated 'diag' LED, we use sometimes one of
>> other LEDs for indicating at least 'boot', 'failsafe' and 'upgrade'
>> stages. In some cases, at the same time these LEDs have defined default
>> triggers in DTS using 'linux,default-trigger' property. Current 'diag'
>> setup removes the trigger and turns off 'boot' LED after bootup.
>>
>> One of the examples of such device is TP-Link TL-WR841N v14 (ramips)
>> which uses 'wlan' LED with defined 'linux,default-trigger' for 'diag':
>>
>> aliases {
>> 	led-boot = &led_wlan;
>> 	led-failsafe = &led_wlan;
>> 	led-upgrade = &led_wlan;
>> };
>>
>> [...]
>>
>> led_wlan: wlan {
>> 	label = "tl-wr841n-v14:green:wlan";
>> 	gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
>> 	linux,default-trigger = "phy0tpt";
>> };
>>
>> This patch extends 'diag.sh' and 'leds.sh' scripts to make sure default
>> trigger defined in DTS is restored for 'diag' LED which isn't used for
>> indicating 'running' stage.
> I'm not really a fan of using LEDs for diag in that case at all, and I'd
> actually prefer to have the aliases removed there (unless vendor also used
> multiple purpose LEDs the same way).
>
I don't like this either, but I think functionality always wins over 
esthetics.

Showing boot status and the moment to press the reset button to enter 
failsafe is
more important than the "uglyness" of hijacking a LED.

Besides, in many cases (wifi led for example) the device won't be using 
that led during boot anyway.


-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
