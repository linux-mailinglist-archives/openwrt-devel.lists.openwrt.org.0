Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BB26E111
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 08:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DaKUuAQG/R3yEuRNmi52dVbMsgUd5vPOoVyThgqqPM=; b=DsIQl8ykhy6jfs
	de5I1kz5LKh6UHklBw8fMq/pZ41kjZ6EJCneP5cTnkDhiCpCoamnHv5yWupxD9YPw4a5eLBjFSO42
	oZOOYb787q4oK4d1dwWRZjgBgnZ3as2opmSpiFRyoj55TT5oxaKVB+tU937D13B45FsSJIHk2OdvW
	WfoEWyvQQAntF8+luis+RDr0jjyYto8K7L/jckwUMElm55WNKqY3Ep6gs59/JLhvCpfVfwNPKZYlG
	Kf7tdkRUtHFn0Jqg7xyJ05JS7yBeaoorZxp43sSRGU3PfFi23s19aVtNhFknzjp+hgGXYeehbKwIh
	yjor0ANyclGWKlIFqs0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMWm-0004Mt-2t; Fri, 19 Jul 2019 06:38:00 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMWc-0004MA-3L
 for lede-dev@lists.infradead.org; Fri, 19 Jul 2019 06:37:51 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so33469343edr.11
 for <lede-dev@lists.infradead.org>; Thu, 18 Jul 2019 23:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a5tyP6/ea8VPSqAJIQv4VhZmwbd6rQSo7qNOOGCN8wo=;
 b=rCmGmnH6s5dPtBlmN76Xm4JRpok4rs4gOittqV3mmrbUmFl3ypuy633PjfuTiTht/F
 yp6QzMr7m6UbHBaf90KlbXflZdEmKzpm/hFvIrg8x/xnIKZj/F35R+WHVE1ub7GuzaXT
 uTaRCT7P8WyvIzJAYQqkgBOhQKe7od5EqU8ldYV2tnVNeskF/e0yCFYqqBc5exYyg7yj
 iPXZLZ+xsrfWVa2f7t4s3LwEBIjHdmRnLZ0IJ575oPlsTDTg5ojN6MVG3ekrFO4Y/iar
 yhHAxGi0EDyC/HGlyNzaSZs8+C7Kh3zAmEs7oT7s+kfecj3lKK/IgKw2rGmQUFKkgJ3t
 zltA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a5tyP6/ea8VPSqAJIQv4VhZmwbd6rQSo7qNOOGCN8wo=;
 b=JHdpdt0XxXHqJqC/2gFMFL0bCRs4p27dsPzZot7YgKXaL3R9lhnu8PpuI7tq3mleGU
 CE5XNh+jTlK3yNBqw2xKimAEITzZ5x+W4374Sd2ctMNtoyTziW5dxosf4GBSYaEi+bCQ
 8bo4xfW3J9OE2u9Sjy1Usn09b5MJAx3YAnir0BpGLffzyxfW2kNrgSNg67EyVoqJWiH9
 6Q9tcwXwtRsbFi0ETHB6cR4OkdpdevdgUfyMeHKk1p/daOYZl5RsshmNYKQycqEsJoOc
 lLC0GP2xIjdZN5bW8Lau1d4dGAdeD22K0nGAnTcLweHAT2H33cWiwgZs3KG623XqZcrm
 +u7A==
X-Gm-Message-State: APjAAAU7oJrJAETA5d0k87ranrjK7e/NOSUAEIoLFXQ6fVOByTcek19J
 fDORE3lgKyrm/ZJ8BiefOIxlWfFu0LQ=
X-Google-Smtp-Source: APXvYqwuIY9F+4qIarDcWe2887iCU59lLo0PH36sEB1ZwFy0U2uFl5qwE207hzNgswLxocjiB09SCg==
X-Received: by 2002:a17:906:f0cd:: with SMTP id
 dk13mr39591089ejb.84.1563518268261; 
 Thu, 18 Jul 2019 23:37:48 -0700 (PDT)
Received: from localhost
 (p200300F663CBC7AC01FEC1107BF65D24.dip0.t-ipconnect.de.
 [2003:f6:63cb:c7ac:1fe:c110:7bf6:5d24])
 by smtp.gmail.com with ESMTPSA id oh24sm5967215ejb.35.2019.07.18.23.37.47
 for <lede-dev@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 23:37:48 -0700 (PDT)
To: Developers LEDE <openwrt-devel@lists.openwrt.org>
References: <4d35a617-6c97-a205-ecf1-bbc2f3f889f9@gmail.com>
From: e9hack <e9hack@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <ad314fa1-3f90-fece-b26a-132624747621@gmail.com>
Date: Fri, 19 Jul 2019 08:37:46 +0200
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <4d35a617-6c97-a205-ecf1-bbc2f3f889f9@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_233750_169280_789A3BA9 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
Subject: Re: [OpenWrt-Devel] wlan startup is delayed
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,
I update my router very frequently. It looks like that the issue did start on 10th of July.

Regards,
Hartmut

Am 19.07.2019 um 08:20 schrieb e9hack:
> Hi,
> 
> since some time the wlan startup after boot is delayed for a long time. I'm using a TP-Link Archer C7 v2 router with
> 2,4G and 5G wifi. From a boot log from end of June:
> 
> Sun Jun 30 10:16:50 2019 kern.info kernel: [   73.083241] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
> Sun Jun 30 10:16:51 2019 kern.info kernel: [   73.804867] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-1: link becomes ready
> Sun Jun 30 10:16:51 2019 kern.info kernel: [   74.403413] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-2: link becomes ready
> Sun Jun 30 10:16:52 2019 kern.info kernel: [   74.954282] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-3: link becomes ready
> Sun Jun 30 10:16:52 2019 kern.info kernel: [   75.400965] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-4: link becomes ready
> Sun Jun 30 10:16:53 2019 kern.info kernel: [   75.879011] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-5: link becomes ready
> Sun Jun 30 20:55:27 2019 kern.info kernel: [  147.632121] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> Sun Jun 30 20:55:28 2019 kern.info kernel: [  148.177353] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
> Sun Jun 30 20:55:28 2019 kern.info kernel: [  148.608287] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-2: link becomes ready
> 
> The first 2,4G wlan is ready after 73 seconds and the first 5G after 147 seconds. The 5G wlan needs more time, because
> it does ACS. The last wlan is ready after 148 seconds.
> 
>>From yesterday:
> 
> Thu Jul 18 23:49:26 2019 kern.info kernel: [  146.673954] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> Thu Jul 18 23:51:58 2019 kern.info kernel: [  298.468689] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
> Thu Jul 18 23:51:59 2019 kern.info kernel: [  300.090816] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-1: link becomes ready
> Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.116162] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-2: link becomes ready
> Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.157132] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-3: link becomes ready
> Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.206162] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-4: link becomes ready
> Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.580767] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-5: link becomes ready
> Thu Jul 18 23:52:26 2019 kern.info kernel: [  326.853947] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
> Thu Jul 18 23:52:26 2019 kern.info kernel: [  327.087462] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-2: link becomes ready
> 
> The first 5G wlan is ready after 146 seconds and the first 2.4G after 300 seconds. The last wlan is ready after 327 seconds.
> 
> It is possible to revert this back?
> 
> Regards,
> Hartmut
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
