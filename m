Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEE614347A
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 00:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aPp3fPzuYfSGrmsjekHDRIAZdaJtOi7i1Ur1QbSvXhI=; b=K0MfM7Q0dbjQISbBvfX1bi7/4
	V7j15j+muwbdvGdS4sM2GtDlU67ni5lfj4yC2i3ERFNBKHSG7kj77Uw0hopND9ws6Q7ZT8SsofAeu
	ifOHjN50w+2ZzyFRtPTkI2YAzinSMJ4oeCHBbKnRt09+hg3ANdCMohFJ9QHN4HmR/Ev6PEsp/GCEj
	6jEIkIVnVDuMOvo9lW708Mg8n1Za2eatk44TERKTPoIqtswCpgKNca59YS8y6Zui2ov+/Lt+ZNE8c
	D2VZERAdSLTf1e5cbmobzBBZUcq6BItH7ymdWm3/w71kx52q+KKHxH8knguYZE38cIMXTNKSpsMhw
	Ux0+pxRIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itgZ6-0003A2-Ue; Mon, 20 Jan 2020 23:34:40 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itgYy-00039T-4w
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 23:34:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id n25so669236lfl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Jan 2020 15:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RbiG8Fd1VXA4Q6Gsb+f4oMGdmZiFf/tj6NUHaTvpieA=;
 b=UtQ15LmMtBHm2uNG3brLlKKIj9uAffjGKX6ucaIbtApPLmreHJnU0YXAsjl8Tlxsew
 /pdqx3G5ZTNDglOEG3EzsFYTxJNyb3re3oJetTV7kymlQOx/b8vr35+n6y7K41vpUbiJ
 hNzEy9kdUI6mWwruhYxZ1H+Evc2PJJwZPnl2UR4YowxcOi7DL9dU6F8eGlmGY7WPtuQ5
 iNBwIK9kSx/dDK24njeWvZjfT0yWj0ud4Qe31rMI6V7NPkGAPy9e6Q/Jr9s6RaJwQ7bu
 EMjGmxbYOiB5YKjzXrNSY0XaTaTYxzA5MpGicKwQC/muS2WQopWsGOlBDapwEnLVDmxq
 n0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RbiG8Fd1VXA4Q6Gsb+f4oMGdmZiFf/tj6NUHaTvpieA=;
 b=kyaS32lNhcpWEErUiPXnoKp8zjmRCfw2FVnygjB7NDs/bX+uddmm6l/0K2r4CvkEEU
 M7CPg5/G8IqcOA3X4nVxm+PL27KqpdXnY/VNIkXyVyU8mIspYZ720+hoqQpJ/P7YjoYo
 Gl+s6k+G3kLd/TJQoM8olFYk+LXfnJ152mC8LWVnZcquUhpA6JW5NvLgdr0ckjkIycXc
 xew18PDgMZXsSf3k/7h2W8bAiTF/kapFkAi49viFf2fknbSOhjkAj2yp0RpJ4NeXvJYB
 GO0LeogqmvOBrDsvgAvC8GGoPVzmrZP5SR5Tmp1ffxaeGr3PLBtnqQO9WF4QDuEpodzi
 aS5w==
X-Gm-Message-State: APjAAAX3014c38qayUviy1aiXU/xQPyMhX5/yOP/XUEMD0M1MXXHivh+
 ruYXsYD4ZYUmrXCjNxVkGXcAnsJS
X-Google-Smtp-Source: APXvYqyjQUUtlFXU/n/o8R+mHKusiv/tPnBlX28exMz5O2bbxwm7XSjQTRzpVUDruIRbwcVorKzA4A==
X-Received: by 2002:a19:84d:: with SMTP id 74mr924705lfi.122.1579563269866;
 Mon, 20 Jan 2020 15:34:29 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id h24sm17660488ljc.84.2020.01.20.15.34.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 15:34:29 -0800 (PST)
To: mail@adrianschmutzler.de, 'David Bauer' <mail@david-bauer.net>,
 gch981213@gmail.com
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
Date: Tue, 21 Jan 2020 00:34:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_153432_211139_901E1814 
X-CRM114-Status: GOOD (  25.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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

Hi Adrian, David, Chuanhong,

On 07.09.2019 12:15, mail@adrianschmutzler.de wrote:
> Hi,
> 
>> > However, this will obviously swap eth0/eth1 on EVERY upgrade, not just
>> when coming from ar71xx.
>> > So, does anyone have an idea how to limit this to run only when updated
>> from ar71xx?
>> 
>> I was thinking about the same. As we have no information about the
>> previously installed platform, i was thinking about abusing the wmac path we
>> already use to migrate the WiFi configuration.
>> However, i think this is not the most elegant way to solve this issue.
> 
> I have to think about that. I recently thought one could just check whether the lan/wan assignment matches the one expected for ar71xx, but that would obviously also catch cases were the user modified it to be like this.
> 
>> 
>> > Despite, while having the abstraction of "rename_all_eth", I wonder
>> whether it would be possible and desirable to do all renames in one step:
>> > sed -i -e 's/eth0/ethX/' -e 's/eth1/eth0/' -e 's/ethX/eth1/' $file or
>> > even sed -i -e 's/eth0/eth1/' -e  's/eth0/eth1/' $file depending on
>> > how sed handles this internally. These options would mean less flash writes
>> (although this might not be too important here).
>> 
>> A rewrite with sed is not sufficient, as we will possible rewrite uci section
>> names, possibly referenced elsewhere. We have to loop thru all interface
>> values and lists, rewriting each occurrence.
> 
> Actually, I could well live with that. What kind of references are you referring to?
> If just someone really named a section with ethX, it will be renamed consistently throught all uci files (unless they are stored in another location).
> Only in case someone uses a section name with ethX and refers to it e.g. in a custom script, this will be a problem.
> And this is where I think we do not have to account for every tiny possibility. If someone upgrades to another architecture, I think it's fair to expect him to check whether his custom scripts still work. We do not have to overdo it.
> But that's just my point of view at the moment.

I'm in the middle of migrating some devices from soon-to-be-obsolete 
ar71xx to ath79 target and was wondering about status of the eth0/eth1 
vs. LAN/WAN assignment issue.

I'm aware of the 8dde11d521 ("ath79: dts: drop "simple-mfd" for gmacs in 
SoC dtsi") [0] and following changes but that "fixed" the problem only 
for devices which were following already reversed (I wouldn't call it 
wrong or incorrect, I also prefer to have LAN on eth0 interface) SOC's 
GMACx <> ethx assignment/register under ar71xx target - e.g. LAN on eth0 
which is in fact SOC's GMAC1 and WAN on eth1 which is SOC's GMAC0. Good 
explanation of that inverted assignment can be found in Jeff's patch 
here: [1].

I have a feeling that the idea with migration script got abandoned 
(Adrian?), so I was wondering if there is any other way we could 
preserve ar71xx LAN/WAN <> ethX assignment in ath79?

For example, I have a QCA9531 based device with PHY4 (connected directly 
to GMAC0) labeled as LAN (and registered as eth0 in kernel) and PHY3 
(connected to GMAC1 over internal switch) labeled as WAN. On ath79, due 
to change introduced in 8dde11d521, LAN and WAN order gets swapped (as 
expected) but partially reverting above change (adding back "simple-mfd" 
to eth1 in device's DTS, see below) brings back the "old" order of 
interfaces.

&eth1 {
	compatible = "qca,ar9330-eth", "syscon", "simple-mfd";
	mtd-mac-address = <&art 0x6>;
};

But it doesn't seem as a proper fix to me (maybe I'm wrong?) thus the 
question about any other, better approach?

[0] https://github.com/openwrt/openwrt/commit/8dde11d521
[1] 
https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg48526.html

-- 
Cheers,
Piotr


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
