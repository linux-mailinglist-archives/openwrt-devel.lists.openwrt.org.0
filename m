Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAA011F7AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 13:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52KQErBuFsURoeCNMku0Wivmm522D1B7oOenfuuIG8A=; b=ApCRnEdwHTnHGn
	x+dZzinqeA7O6CUBvDbSC5OEIAMEogrPpT/7DJ5RsVSSTxRtazMdktEQBwK83huwGj8tz61V6h/0O
	RWz/d+jaMoOL+JiOu6o84l7EyiVs9x6mvn7fuJhyW0TaXRe1UMCPXs6w2wkNs4UrIKRgFytKfd81L
	6c/ErTOydMWIMPrHUVaY/J4yy+0VlBUdqW63hw01Pqg0pOLjR1QMI62Y/sdldDF7ZAvVyPJHhlpRw
	Ulc7GaOcyA49wUJ0CfVevp/SAc9EpNczjrpjJ/rxTPOTvb2tkgbPCErmE0RPDHXmxLlf+nNre20YG
	/1eAOhxGtaEvH7oEMiiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igSuA-0001N6-QA; Sun, 15 Dec 2019 12:21:46 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igSu2-0001MQ-7q
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 12:21:39 +0000
Received: by mail-lf1-x12b.google.com with SMTP id i23so2297582lfo.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Dec 2019 04:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=01bJknJkPaxlOBXgdI+vdl9UVZ/obmBI8PN2CXHH0T4=;
 b=YwqOlJubMX+UE7b4mMlUGsKncyRpuBLrY1oqDixobd8EawdF2x6J1b5hh7yO285rrq
 lv146ACDDMlvTpgzOM6YlFEsAXQisAoDhG9I5PCWurLIkhuZN8rP0di6GSgeKqUpG4ix
 zbKuq8d1agptrQno38h7Etjpsy93efTBwOUEKLURhhQgcPJOpf4VSUTb6sgkXt54vk4I
 34wTaQgGRm/UoAt0dhweYqEUmHfkl+6a1tDE8x01E70/Eyo3s9AdgZ3sPRrjwnUWfveU
 2EYZ0dntbsAATzml7Th3nSc+JOuJQSXjyNPmJNhr220hToFbBVyldcoase4hvcSPni/F
 KWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=01bJknJkPaxlOBXgdI+vdl9UVZ/obmBI8PN2CXHH0T4=;
 b=Gws2S9BxPPxF9mDuSBDw6ZQVKs4ZX+bDOMTuY5NXHGU0ikgCsDEArztz7ifEPi+mlz
 u2FURAUbi01HUK3ic2uJnOHLxLxH+iQrvOCExMWR0+7udG3d/nVKZuK19PcI2EYqDamk
 P11xoawT7WMJnMpeCeFk/XOGrCx/xxw7s+FQZeqEHOp7YCEXAfjbJYqKCNgNpYO94ymi
 Ync7ytXPL9LcRo7mZN21PNHl2d9lMmBmC2E0fdurpWSG/3HjZD2CJX5DjHAPqVVC4lJW
 fHZc1Vk5uz+d80GRnru7S+h0jwiksSrdffH25w/YM+hd3CLZ4WzGAwSl5bY8bPjXyUwI
 97/A==
X-Gm-Message-State: APjAAAUqVJfvZsMgEUvSzPjVRUcd3tCDyt8807rTHMhqHfXrZ7B+/+6n
 k6M12QmbSRKaX8BnYHuR7CM=
X-Google-Smtp-Source: APXvYqx9cbAfnCVuql+cDYhXpmzfzG/ViSOZ5+KITljw9XXdkW1Ln6xXKWZx8p+NbjkHAdTWP7gK4g==
X-Received: by 2002:a19:6455:: with SMTP id b21mr13220296lfj.45.1576412492130; 
 Sun, 15 Dec 2019 04:21:32 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id p15sm6947525lfo.88.2019.12.15.04.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 04:21:31 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBFCLSsV026152; Sun, 15 Dec 2019 15:21:29 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBFCLRU6026151;
 Sun, 15 Dec 2019 15:21:27 +0300
Date: Sun, 15 Dec 2019 15:21:27 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20191215122127.GE11070@home.paul.comp>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
 <20191211191652.GU11070@home.paul.comp>
 <5675304.dXXkMWVoIb@debian64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5675304.dXXkMWVoIb@debian64>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_042138_280476_AEC5D3AF 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Ben Greear <greearb@candelatech.com>,
 openwrt-devel@lists.openwrt.org, Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Dec 15, 2019 at 12:00:48PM +0100, Christian Lamparter wrote:
> From what I remember Sven Eckelmann also measured the impact from the
> patches on the performance and posted his results to the OpenWrt ML
> (google will find them).

https://github.com/freifunk-gluon/gluon/pull/1440 is what contains all
the relevant data. So Ben is well aware of the performance
implications.

"Even a 256MB device with three radios can go OOM"

It looks like having a version of kmod-ath10k-ct with reduced buffers
would be beneficial to the OpenWrt users.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
