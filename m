Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B23D131350
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 15:04:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GEj36PGtZwWy4N3gmKAYvf6Kf08x9VsYUCEI9lL9ijk=; b=JcQUdpHdgWNLlRDffh5mJUfOw
	XJJ4Yw20NQKpJGK2s/ECBUTQQ6WMypVV/3bzXrc321DXQsEdU1Kde1WHCuD8BSeb9eLLSWwWXx0Kh
	eFgsgzGCUZE9UaQSQiSm6L9BURmtgMH5X1Uz440gjrnwSWEXiUzTMiFR2YO+nS71wvFPBXZjziwcy
	YV957am3Pt/Q53n09LO4tndWMXksu61jYdTJPrD3qmJeNgQEwq834TZJRv2/e7QX7JOCtLrrbv9S9
	80J//I456F8QMrjhjTG6tVCiUeTu7KO/zz4++x7cWXl7/P7I/yZzhYFsyqJdlcVOzASyIYVVJRwPN
	0myHlmqpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSzB-0002Qy-Vy; Mon, 06 Jan 2020 14:04:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSz5-0002Qb-EI
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 14:03:56 +0000
Received: by mail-wr1-x429.google.com with SMTP id g17so49703686wro.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 06:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Rm24gUWzIB6tjVbNcynG0XjLgS4d3QDHXFY9gkyz9uk=;
 b=nq+FnSrHzgoBEtcuENQaXBwTSfJlefSKMuslsVPpPCnTJG+hQ9orXo8w+Q9c0TbhMQ
 7MOXNuZRNvsqb1ARLd0Julg5N7cW3Wnpk+HZhz+xMje34XprVbETZXHxmUNIq62Pml+5
 CIctcQnVsAolz3JI9ru88awWHfd+oaRFKPX0yYde4dW3o3GLEo1WjmLHz3YX84G1cj+P
 LdpT43rx4qFqvuQ7uarAX0I309tc5jzX5O2IZ7nAWo4GmzXNN88FUYQStqiQAazv4ya0
 0HOgp4pRboorOZHVSG3fzBKc5yuIDZ2dmdPA4lFlvG7f1qaXSf3osvPD/lVKM2TnmlS/
 gL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Rm24gUWzIB6tjVbNcynG0XjLgS4d3QDHXFY9gkyz9uk=;
 b=Wp9AA0e8JJ+RzPu0UTy0yIWN5Y00dGWgLMBEvzenShq07wHxnqPi1xCj/3A6jzAtjP
 WcgW4lcVi5T8ikLIvxzTQPfI0cON56079I2N3vVQERejeA4p7ra99c/LcAmJrWIE6oYL
 yPbIB1VMp6rqk1m6TZV3VfzWlaEiAvgOy5Pvo7sknvbeu7NCXyeWHCCV7Vn87fwoyChj
 sLaznfl3C9W/mnDgpQ7bAwyXraiRzIPaqzJpMbTyfFPFCtzUwPOOvsZFo+Ul5SG3+Ljy
 nEVbnPXUx34VOpjpp53ihs+45P6GAKx0pHZ/Z2Hy+0RHeM1AWG+mvdUVuxk5QPc6GM1c
 lOZA==
X-Gm-Message-State: APjAAAVtGVIgEr+G/qTps9Z4wlRgG/0Qdp0HkTBPygtp2eqLslQ8fGKX
 t3D19AcmY5H/aUFv7P7gdpKMTM5eoxqZTg==
X-Google-Smtp-Source: APXvYqykgfINOUFFNabK82SysBAuC28Qzr0R6DoisBkhaokRmNr+hk2b5btAS4DpdhxFgxX3Z686RA==
X-Received: by 2002:a5d:62d0:: with SMTP id
 o16mr101157575wrv.197.1578319433149; 
 Mon, 06 Jan 2020 06:03:53 -0800 (PST)
Received: from [192.168.1.230] ([213.152.162.94])
 by smtp.gmail.com with ESMTPSA id p15sm22896943wma.40.2020.01.06.06.03.52
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 06:03:52 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <aa86bd41-26df-841d-2735-5eac553e676d@web.de>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <f0d00601-d226-079f-7fba-5bba07e331a1@gmail.com>
Date: Mon, 6 Jan 2020 15:03:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <aa86bd41-26df-841d-2735-5eac553e676d@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_060355_479590_D1786ECA 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] time for OJ 1.15 everyone?
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



On 06/01/20 13:58, edgar.soldin@web.de wrote:
> new year, new OJ.
> 
> start of the year is OJ release time traditionally by now. are we in agreement?
> 
> a snappy new NY to one and all ..ede
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

Happy new year to you too,

this is the OpenWrt mailing list, I don't think it's the best place to 
ask questions about OpenJump release schedule.

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
