Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED7FF62B3
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 03:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eAXEZP7pvLjFxGyxUAYp6eprRmlRMh7f40jnpeBm7z4=; b=qEloOQ2yJhHtT+BdsMYS7WOw4
	BB904xZxuF4jyuQuq8VZEWBbMVu0u46faKhtjfltH+eeBTvMs8mwEQH90FdfH4OHPxLaOsPvMyGqi
	hJdZ2StpSIHB7X+g3ij8QKMhXKgsUN4bvMVxkph1QhNTeURdk6PrDdV60RnInIHvLksTjmx31VvrO
	6cKtZCTdOqGdivi0dm7ZyoN1iqZLJrFGQkpHvTeT7W6mymoQdhKew4JMCeJ7IV2OvR7QmxshrtrEe
	1jHGIy1TeIFhLmFwpLxU3vhB2EBX6qf1BIMOsHG1I1oF7s/VofuxltV+9/NHxEiFVcWabpj2NVjvr
	83y8dLyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTdE2-0001mL-GV; Sun, 10 Nov 2019 02:45:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTdDo-0001km-76
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 02:45:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id p24so7806387pfn.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 18:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=m/ciowkMGLoHnHGSrjaEXdYVlmVHyzs6t4bOhTEGaZA=;
 b=k1NZzcO9saPxqLLJ4pfoH7evqGP1uQiFFKnT/c8UBkDMQExVISqIucmnB/aumWg1BG
 GgV4F58nhXQSMfTB+agoldbbu22oCOga40KcIxVHlvAqExmwC5Nn1PLd5X1uI2o8PhZY
 ulMQ0fk3xTG+xN3xaljmABa0PjEvv78uOiWuFyL+s37NVPGfmjpJMpzSMk3DaRCwyyOE
 Go404ArMRqncMDIa8hP3xn2oRzLdCn7Ti/N2LJBnHA8/VUuEehYRQsI/6x8jjsui1DQS
 CzF7SU7eLiRUS0gvrX/lpTyz7xG8/Ql1Tokw0yOUI1rt7wTH2cYpRDPd9msvf4L8rHdC
 /r1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=m/ciowkMGLoHnHGSrjaEXdYVlmVHyzs6t4bOhTEGaZA=;
 b=hotUWQ/+Vv6fYd+u7wAFORw+a62m4J0oZLF5wmeFHbbsHeOwz8emHfX9cS01xIBChj
 42cLouIPdF3DQvlufZ60XmYZX5EYoyKWAwRmz640ZX7eb2MZyQx81kHoCGBJVevJCMYj
 6JwaZAFbVfusVBNKboQo/xUocY0FStJd2aliv+5H5Tn9eezAoORwrX4zAgLrDO58uyCF
 SCD3XiNUlNZ2F8RdLyEcxX3uqTZs8LQkLrXGc0nDHDvRvU/2BH44RR2SnUjqcafAQqbd
 gPeKws1q1TYlpQssQVwjKTUT8MahjsLECkZA1cahtRDwp5zrpk7NBKiI1b8E4tJjE/Bq
 WkrQ==
X-Gm-Message-State: APjAAAWKz0T6AzpYCuFJcDeehT7MIn5nglGe6ruTSXweehGaM1GO+uj1
 FdmAUWflBUNxfVJ5zAkKRxeiX+d1WDY=
X-Google-Smtp-Source: APXvYqzME8KzAjjiJfXD3tnVmWFYT/2JANY/pns27oAihoiUHz2AeyV5t1CFkHZNUe3ydPd0pDuWFg==
X-Received: by 2002:a63:e145:: with SMTP id h5mr21321791pgk.447.1573353897649; 
 Sat, 09 Nov 2019 18:44:57 -0800 (PST)
Received: from [192.168.8.125] ([103.84.137.195])
 by smtp.gmail.com with ESMTPSA id 137sm11731701pfu.173.2019.11.09.18.44.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Nov 2019 18:44:57 -0800 (PST)
To: Hans Dedecker <dedeckeh@gmail.com>
References: <0fe1f8f2-4236-cc6b-7246-20ffb6afcfa8@gmail.com>
 <CAJLcKsGAF9htce6a6i4Oc=zR8H+bwwpiH+zEcc4ZznL=OrnNkQ@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <41bfed4b-62a6-0551-79d4-1a5e9e47a6ad@gmail.com>
Date: Sun, 10 Nov 2019 10:44:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsGAF9htce6a6i4Oc=zR8H+bwwpiH+zEcc4ZznL=OrnNkQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_184500_284950_39E78A3B 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] script hook for odhcpd
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 10/11/19 03:41, Hans Dedecker wrote:
> On Sat, Nov 9, 2019 at 2:43 AM Alberto Bursi <bobafetthotmail@gmail.com> wrote:
>> I'm adding hotplug.d support to all DHCP events.
>> For now only dnsmasq triggers them, with
>> openwrt/package/network/services/dnsmasq/files/dhcp-script.sh
>>
>> DHCP clients like udcpc and udcp6c are easy to add as the client calls
>> a script hook with documented arguments and environment
>> variables I can pass to scripts in hotplug.d/dhcp.
>>
>> I'm not finding anything useful for odhcpd.
>>
>> It does have a similar script,
>> openwrt/package/network/services/odhcpd/files/odhcpd-update
>> that is called "lease trigger", and currently just calls dnsmasq to
>> reload hosts file.
>>
>> It does not seem to be called with any argument or environmental variable I
>> can use for hotplug scripts.
> That's correct; odhcpd has no hotplug script support at the moment
> triggered by DHCP(v6) lease changes.
>> I can also use its ubus API to get a list of ipv4 leases or ipv6 leases.
>>
>> Did I miss something? Any ideas to implement DHCP hotplug in ipv6 server?
> What is your exact use case ?
>
> Hans


I don't have an usecase for DHCP server lease events, so it's fine for me.

I started looking into this to have a working hotplug for DHCP client 
events on IPv4

(for a custom dynamic-DNS-like setup without having to poll WAN IP on a 
loop).

I've though that if someone has added hotplug to DHCP server in ipv4 
then it might make sense for IPv6 too

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
