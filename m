Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6E2149986
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Jan 2020 08:40:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:To:From:References:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68lF0srypfQpMvBxt2QlsKAJh5+hkaFq51DtvFcpIlo=; b=O0O5RFnSiD9Lrm
	4Ybi7Uw1lbjCZTM6yU09QKozQpSO4q7836V/+GTOPvRNsgNw/Ko1ngNUMAlLK2UwT8CwF1Mle7lgv
	92/xAeHueF3XZ/4tqwPYr4e6GiFpOQcunWDIN7d1nGaZlw35yDz2LgNc5IJcuoFJV4d/MdK8/aJlk
	i0R+4SY8IwfXtHOiCAZaoQddjzvnfH3xbiHB4B1w3QyiWFgUOJ77KkgbF1FiovJRSWiHrhDgK4qxb
	6y7y44C66+ttC85QVV7ogp/ejAXA44YxH/xVUWSi8eWqG1Vlj8PjK2ILni0cui4bjInsKDM1E6Fkd
	74DPMlRr6NGqn/YS5Gyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivcWj-0004V5-Jf; Sun, 26 Jan 2020 07:40:13 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivcWT-0004Uj-4Z
 for openwrt-devel@lists.openwrt.org; Sun, 26 Jan 2020 07:39:58 +0000
Received: by mail-wm1-x330.google.com with SMTP id u2so3703571wmc.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Jan 2020 23:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:references:from:to:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=EpRs9Vf1xhk1TF6a3ciBI/kryfxbc9VwzXYOaqs9Dgk=;
 b=Q6gFfcR/bcEaeVMe4DC4jPSLGxtVnYFV0POYoLkurNtexZz2YSHhWB2z5qfUtih8CQ
 DnFf2SwQE2Rckf3KWw7j4AvbjD7IR1P9F3+sK2nBc4hfkroaQtfx+6y2En1V/2jcKX+k
 7K4GAUT1Tnq0N+kHMhfckJkJ73cwjDO4HAFOrUwdKqqBiW0fdaiFgdXnBCK0d85zXdnD
 xpgtLjYYCaKsh+cxvn6+P27EmEx9b8NYv62YzXqZxFD2fnJ8PopWf1YwKO65p94w3MyL
 oYymKprd1KBtZ15h6+6O+ddQDgXX+mp6oOltRlH/apY4vhTEJznB9AXgXd2Dz/PKBlGj
 WHVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:references:from:to:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EpRs9Vf1xhk1TF6a3ciBI/kryfxbc9VwzXYOaqs9Dgk=;
 b=Csx/Jo0OjlIEdugj5e9Q47lLy1cJjQqlRTYzuXSo71A2lvDOENdXTy2vSvuqX6e6kF
 2/Y1Ni9ETH41KtCrpLXq8n91S2nlL1h3s0ZtEXlibl0hfpM0sGYNem2MehZ/AZELdxUI
 JuDpZsnI3fbuDG0G6Gat30jXrcCanXAnp1CemwhykvA9oSYkL/+OxRSbLB8YaJXFvvN+
 qg+IvAa/EILVRWDytDxzltQSK5wHaC2AIZMcix1pqu6MMpjfr3lRGOQ+H5Bfc7eeE8V+
 cMeL+5dui2KVJRZWG+hJJuHpSdFhkMBMm5NVE6zITbSKSpwwpb3cAMw49XM+AUWv3+jX
 d76Q==
X-Gm-Message-State: APjAAAWhzARYkLc1YZbRat77jZR0IWQ2b6O8gzZLR2FOs0D9AXqShDJQ
 xa1Yq5jkGK+ZGfRIowO4qvlt3x1w
X-Google-Smtp-Source: APXvYqwEF7vGv9HH2xqwe1UPHbgVBmKqhcUZmHyUD7z/Lk1uiH4a9fzE5CdyikS+m0+DNoQD0eUG7Q==
X-Received: by 2002:a1c:4d03:: with SMTP id o3mr6922885wmh.164.1580024392269; 
 Sat, 25 Jan 2020 23:39:52 -0800 (PST)
Received: from localhost
 (p200300F6671C2BAC9C3FFA93ABCA7E6F.dip0.t-ipconnect.de.
 [2003:f6:671c:2bac:9c3f:fa93:abca:7e6f])
 by smtp.gmail.com with ESMTPSA id g2sm14781264wrw.76.2020.01.25.23.39.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jan 2020 23:39:51 -0800 (PST)
References: <07a06a0d-1cbf-f37b-44db-51227d652af3@gmail.com>
From: e9hack <e9hack@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <b88a80a3-5c2c-d755-3f5f-5e57e20ea871@gmail.com>
Date: Sun, 26 Jan 2020 08:39:47 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <07a06a0d-1cbf-f37b-44db-51227d652af3@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_233957_210906_7488D2E8 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wifi/wlan isolation
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

Am 25.01.2020 um 15:14 schrieb e9hack:
> I face a strange problem. I have configured 9 wlan's. On two, clients can't reach each other. I check the settings of /sys/devices/virtual/net/br-xxx/lower_wlanxyz/brport/hairpin_mode. On my 5GHz wifi, hairpin_mode is set to 1 only for wlan0. For wlan0-1 and wlan0-2 is still at 0. On my 2.4GHz, hairpin_mode is set to 1 on all 6 wlan's. 
> 
> How can I solve this?

It looks like a problem of netifd for wlan channels with ACS/DFS. Netifd can't detect the if-up for interfaces on such channels and does nothing for them. As workaround, I add a hotplug script which checks hairpin_mode and set it to 1 if necessary. 

Regards,
Hartmut
 
Sun Jan 26 08:19:16 2020 daemon.notice netifd: Network device 'wlan0' link is down
Sun Jan 26 08:19:17 2020 daemon.notice netifd: radio0 (17599): Command failed: Not found
Sun Jan 26 08:19:19 2020 user.notice DEBUG: hotplug/net wifi-detection: hairpin_mode of wlan0 is already set to 1
Sun Jan 26 08:19:21 2020 daemon.notice hostapd: Configuration file: /var/run/hostapd-phy0.conf (phy wlan0) --> new PHY
Sun Jan 26 08:19:22 2020 daemon.notice hostapd: wlan0: interface state UNINITIALIZED->COUNTRY_UPDATE
Sun Jan 26 08:19:22 2020 daemon.notice hostapd: ACS: Automatic channel selection started, this may take a bit
Sun Jan 26 08:19:22 2020 daemon.notice hostapd: wlan0: interface state COUNTRY_UPDATE->ACS
Sun Jan 26 08:19:22 2020 daemon.notice hostapd: wlan0: ACS-STARTED
Sun Jan 26 08:19:23 2020 user.notice root: ip link set dev wlan0 up
Sun Jan 26 08:19:23 2020 user.notice root: ip link set dev wlan0-1 up
Sun Jan 26 08:19:23 2020 daemon.notice netifd: radio0 (17663): Cannot find device "wlan0-1"
Sun Jan 26 08:19:23 2020 daemon.notice netifd: radio0 (17663): Interface 1 setup failed: IFUP_ERROR
Sun Jan 26 08:19:23 2020 user.notice root: ip link set dev wlan0-2 up
Sun Jan 26 08:19:23 2020 daemon.notice netifd: radio0 (17663): Cannot find device "wlan0-2"
Sun Jan 26 08:19:23 2020 daemon.notice netifd: radio0 (17663): Interface 2 setup failed: IFUP_ERROR
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: ACS: Survey is missing noise floor
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: ACS: Survey is missing channel time
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
....
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: ACS: Survey is missing noise floor
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: ACS: Survey is missing channel time
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: wlan0: ACS-COMPLETED freq=5580 channel=116
Sun Jan 26 08:19:34 2020 daemon.notice hostapd: wlan0: interface state ACS->HT_SCAN
Sun Jan 26 08:19:35 2020 daemon.notice hostapd: wlan0: interface state HT_SCAN->DFS
Sun Jan 26 08:19:35 2020 daemon.notice hostapd: wlan0: DFS-CAC-START freq=5580 chan=116 sec_chan=1, width=1, seg0=122, seg1=0, cac_time=60s
Sun Jan 26 08:20:35 2020 daemon.notice hostapd: wlan0: DFS-CAC-COMPLETED success=1 freq=5580 ht_enabled=0 chan_offset=0 chan_width=3 cf1=5610 cf2=0
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.438348] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.445157] br-xxx: port 1(wlan0) entered blocking state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.450590] br-xxx: port 1(wlan0) entered forwarding state
Sun Jan 26 08:20:35 2020 daemon.notice netifd: Network device 'wlan0' link is up
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.471004] br-yyy: port 4(wlan0-1) entered blocking state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.476606] br-yyy: port 4(wlan0-1) entered disabled state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.482625] device wlan0-1 entered promiscuous mode
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.508642] IPv6: ADDRCONF(NETDEV_UP): wlan0-1: link is not ready
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.514983] br-yyy: port 4(wlan0-1) entered blocking state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.520594] br-yyy: port 4(wlan0-1) entered forwarding state
Sun Jan 26 08:20:35 2020 user.notice DEBUG: hotplug/net wifi-detection: set hairpin_mode for wlan0-1 from 0 to 1
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.670540] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.690793] br-yyy: port 5(wlan0-2) entered blocking state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.696393] br-yyy: port 5(wlan0-2) entered disabled state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.702461] device wlan0-2 entered promiscuous mode
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.728142] IPv6: ADDRCONF(NETDEV_UP): wlan0-2: link is not ready
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.734502] br-yyy: port 5(wlan0-2) entered blocking state
Sun Jan 26 08:20:35 2020 kern.info kernel: [28910.740078] br-yyy: port 5(wlan0-2) entered forwarding state
Sun Jan 26 08:20:35 2020 user.notice DEBUG: hotplug/net wifi-detection: set hairpin_mode for wlan0-2 from 0 to 1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
