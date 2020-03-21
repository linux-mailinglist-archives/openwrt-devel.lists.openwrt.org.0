Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4090B18E219
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 15:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvK6AqMF5moUcspr1Dk0Y5bmyR1Rs4NpFchvLXGBWB4=; b=dcDe8ZWPG7yiZ9
	N9A1+8dGJGqRKJE9j0ki0Dy2bnNKDAaKussWe1liVWHtIKQLsMMzRgQNLAgKFIFddhtwyVeyCXbMO
	gSIA0FnBu7BFLrEekd4qUHvOQThfYr0YqiZI7sFWMbW+XH4BJx67hYB3dMhYM8s8pwBoCjv9CuTC9
	re8HvWqOTOluPnmstYweKBmvjxEtjg0ID/NJFVGTNkzucXnEovnxD3v6x6cR8xW4EPp8tobSZKfpq
	86xHz05mbDHt3o2xzrqAfnFFxcIpnFqyLdpimV1Mnwf7Ua53jMD2GcVbyUKlNLdOdP5TrdIlkMkHv
	bNs9g6voEp2U5bZ4bp7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFfIR-0007MJ-38; Sat, 21 Mar 2020 14:40:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFfII-0006uC-Vp
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 14:40:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id f130so8338090wmf.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 07:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QFWT7VYNPWIQbB00XFWz0H7Pw7+GkD9/iQLOaumTGBA=;
 b=nyGl5buLUSi+7Vc5RjQgGY+vnF0Tlrn5UtIphTQfowHvtgtAj9bVC0QckL15Tjavlo
 nlZG6KF6RTt+4RaonPH3MpKpmpmlRbRcZoUW0/2z73WhFbQtqvm75oQrLqvqAmu7SEi5
 nTRmOZlOdN+C7Y5nLXfci+3wL46c9yRAzrCwaJDrapul6ZyZyAFAHhhlWDrevMm/r4ss
 m9jy7seU4S2QZmfbdeXV6KJwb/KfX/RatE9Sc01EDDV+MJQboh3MqX+J8LzggbvLwf8o
 wGjPSo7lTz3yUY5XksNmYK9gsL6edlmpvbnEoMVlirHG4WiS3iwbuOZSfLnT8PBSc1vd
 8t3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QFWT7VYNPWIQbB00XFWz0H7Pw7+GkD9/iQLOaumTGBA=;
 b=nTSYt6oZh9mcKQ649TMOC40zPe76ckCVGn/pjUcUOtj4+lKiVcLtIl9ihGBJAhR4x/
 fI+xpf0JwLqOand5dhB5BximMbuKo8O/WS6Zk9D3SArK5vFPPcW5k8QiLjfjFdo+zYr+
 wdczToRBhsw8HaQ2F4tKm4h3AAnyy16dWL0Z4wRqtL8scpo2vV/r5Q3TOJth4gXPqLXl
 3NG8v/OflzCNwIGUntxcgVTgPch3+EuIQzvjxpcdD1W3kp/vhXajzpnZZdx08HDHwkAA
 DaDSD+Ol5Sg4GNGDikCKKB2ITdqZVh2ApN4CrSEUu/MnUek8tueOHF/CWoZVUyiY3V3e
 b72w==
X-Gm-Message-State: ANhLgQ2A3/SmE3Mccix8kMHRZhJ6+AZcLVLScVE+TuXRXXpt83V9b1d2
 xo5CIMlCtoaTQqJyKvXD/omUHPaW
X-Google-Smtp-Source: ADFU+vu/zEd+qfb0R7VsZJkIJK/wSVLElkh1PsgD58O8SGLRxn7PAScscgJZEg19OI9OjXGNYyc1EA==
X-Received: by 2002:a1c:68d5:: with SMTP id d204mr16468329wmc.15.1584801608528; 
 Sat, 21 Mar 2020 07:40:08 -0700 (PDT)
Received: from debian64.daheim ([79.208.156.3])
 by smtp.gmail.com with ESMTPSA id q9sm13147852wmg.41.2020.03.21.07.40.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 07:40:07 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1jFfI9-000wFz-Rl; Sat, 21 Mar 2020 15:40:01 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 21 Mar 2020 15:40:01 +0100
Message-ID: <2036574.pORaqOsge7@debian64>
In-Reply-To: <20200321130555.30053-2-linus.walleij@linaro.org>
References: <20200321130555.30053-1-linus.walleij@linaro.org>
 <20200321130555.30053-2-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_074011_046841_533505EC 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chunkeey[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] gemini: Add v5.4 kernel patches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Saturday, 21 March 2020 14:05:53 CET Linus Walleij wrote:
> This adds the kernel patches needed for the Gemini.
> Just 7 patches, 5 of them are already upstream.
> 
> Notably we backport the patches to use the temperature
> sensor on the hard drive to drive temperature control
> of the NAS chassis. This is required for the DIR-685
> which has no external temperature sensor.
> 

I've made a RFC with a package for the drivetemp previously.

<https://patchwork.ozlabs.org/patch/1247140/>

would this work as well?

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
