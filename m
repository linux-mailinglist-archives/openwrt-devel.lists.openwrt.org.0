Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFA3FAA1C
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 07:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xOlRhOfhbz/a/wOF4QazSFs1lLxWTBfordc41Z4L5Jc=; b=eYS8IebgeYyzIRTfk2KOAd/H+
	bV2m/entNA7oDe2SC9VCjZ1HECR8CR6f6dny/FYOZs9QQuMXDPouKpo2mKZd0mfuQaQIz+fk7c85L
	Hnj8V9mBz1qHLWr9DLUKSFd6SJ4nKTXV5C/evk2toniDM9FTmqG9BvDkglC6zVVxuezJ6GaQTzD9j
	ePeScTzvs1vsMChWlXMq6vpe5LBAfUU+yfOI8QFfO6YEhQbWfGY9Wl1BwdtCkrWYJgJg80CvwV1Bh
	ip+Xy7z9U3NrGb8wjcqJINbvBhqImeNvy7ym/tL/D92XI42oAOlgs3409O8EtfPemHAlPqQmr3KYH
	+vCPPJ/kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUm3A-0004FD-FP; Wed, 13 Nov 2019 06:22:44 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUm35-0004Ek-2o
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 06:22:40 +0000
Received: by mail-wm1-x32e.google.com with SMTP id j18so4030389wmk.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 22:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xIsaEhYNtxTnFP3Jzk91ho8HwPsIqzF2CMBJgVxWYi4=;
 b=Ij0Z2szVXESLiugH5bL3QeZtPBidvg2PIb++GVh1p1oHVS6hXqZwRFpRxj7ojvjuzl
 aUZC1vD9qGqvRdkEVrVYNwCkAGKD4/u+WYMDrSLOKSbu60PwtLFnOQp7sq7Zdk91XAE9
 kN3YITIMsxF4lNb3E07HLvA4CMj0PnyPGaueLXEuC92gDx2BPMu9GrNsn33pXXNAXFjm
 1YTA2F2N3x1jHil8GMJZJJujxyzy+wyTDxidYpn9cNf4Q+4Sb4i4vx1+o5m0G7DRFRoU
 +uZ9HTf3UNOH1XAFQgGZqAGmy/VpLFD8m02yn/pAmxhBcWruneOm1U8YJxdQQhAOko1c
 fRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xIsaEhYNtxTnFP3Jzk91ho8HwPsIqzF2CMBJgVxWYi4=;
 b=pE6tZXoVgZq673ittzk0iBAlNuiBuKVeeZ858f2N/HwUo1mBH1sBefNLxVgTApcVx0
 znIkv+bBQulcu3V5ZVG6q6nf+IAlG3OWkytgf2Yxx3Y59OsV1olHqylACg/YKLhl9oIy
 h6qUwxCrDuelziNYRAr4y0NJNf+CpeaUtY45aSQdRmnbPjauFxO1lMl8lqfVdQ1QcBFl
 cNhMzbju0cIXKaQHmuzJaPlPsDMMwgGUJ70F4bNXwjSjSBfwOJ8bVn3nGntE3qGjHHxf
 X13aJxx/T+ITk2HELjCE02Nwr5E/DVLNUUN4Gw4AtGdS03Hc5BL529NUNQNWz5ta44Pj
 x0BA==
X-Gm-Message-State: APjAAAULP6RsZHgGhJGoWhznoeJDAcV+MDCwyMX5RDFL9umQzv3VkOhb
 lZZGKPbzvXP713lTp8P/eTOKKQ/C84g=
X-Google-Smtp-Source: APXvYqzWBPMUAJN8a3mBiqTH541K+vHE65EukQM7lbVz41hVBsPwfaGn9vc6uWvP8qt0lWF3PUJO7A==
X-Received: by 2002:a1c:7709:: with SMTP id t9mr1108913wmi.80.1573626156385;
 Tue, 12 Nov 2019 22:22:36 -0800 (PST)
Received: from ?IPv6:2003:ec:2f17:f600:95e8:b0fc:2be1:70f0?
 (p200300EC2F17F60095E8B0FC2BE170F0.dip0.t-ipconnect.de.
 [2003:ec:2f17:f600:95e8:b0fc:2be1:70f0])
 by smtp.gmail.com with ESMTPSA id y189sm1140110wmb.13.2019.11.12.22.22.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 22:22:35 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <000e01d59954$7241b8b0$56c52a10$@adrianschmutzler.de>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <e5024ac7-56fa-8a01-6cf8-a62cce2f9dcc@kresin.me>
Date: Wed, 13 Nov 2019 07:22:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <000e01d59954$7241b8b0$56c52a10$@adrianschmutzler.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_222239_184498_5BFFD4F4 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] OpenWrt: read label MAC address for FRITZ!WLAN
 Repeater 300E
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

12/11/2019 13:26, Adrian Schmutzler:
> Hi,
> 
> I'm currently trying to remove the dependency of label_mac in 02_network from phy setup, i.e. replacing stuff like
> $(cat /sys/class/ieee80211/phyX/macaddress)
> with extraction from the proper flash location.
> 
> One obstacle is the AVM FRITZ!WLAN Repeater 300E, where the calibration data is extracted with
> caldata_extract_reverse "urloader" 0x1541 0x440
> 
> Is there a sufficiently easy way to get the MAC address out of there _without_ relying on initialized Wifi?
> I'm looking for something like
> label_mac=$(some_extraction_function "urloader" <some_offset>)
> Technically, it should be somewhere in the reversed caldata, shouldn't it?
> 
> If this is not possible (with reasonable effort), I would just calculate it based on the lan_mac in 02_network.
> 
> Best
> 
> Adrian

Hey Adrian,

all mac-addresses can be found in the urlader key value store.

maca                  24:65:11:AE:CB:6B
macb                  24:65:11:AE:CB:6C
macwlan               24:65:11:AE:CB:6D
macdsl                24:65:11:AE:CB:6E

Following the fritz_tffs call in 02_network it will be:

lan=$(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
wlan=$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs (1)"))

FYI, the label mac is macwlan.

Does that answer your question?

Mathias

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
