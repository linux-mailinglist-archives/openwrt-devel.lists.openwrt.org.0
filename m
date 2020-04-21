Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F93D1B1B10
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 03:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sbjgA4m2FLFUCE50WRPBlaou0i19z8NYESq/ZY0haYw=; b=JK8REoGo+8A/uiMhRfgsvClT/
	etY1jkkySKEknm9k6fVrJ1dzyYlGZcVHEtbl22X5nB6N8t6G1fKvqnUE+W6CzB0CHYFiTM3HGvBYX
	FiyV4Mg6vdWLkoQveqP0iGTSDpq1AMVTK0/Tf8yjV23jv45t14xWynNw+CY6w4ViveUpoyq0QAMZi
	iAa8OYBFB5Na9gE+nel1EPNpETCOZyRbRGa1s10RmHDN7ykl5t48N1GgHv+hRYkC061Gzhnz196mp
	sRQyL5uuGgnJqplCyYeRFn2ztKZSL6pWodPb8N2VsowJ8B11VQ7xDORfSofAjPOivzj/Oxztxgjaq
	FZ9WKxAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQhNh-000400-Ca; Tue, 21 Apr 2020 01:07:21 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQhNb-0003y9-EC
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 01:07:16 +0000
Received: by mail-wr1-x436.google.com with SMTP id f13so14491578wrm.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 18:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=JdtC4kbBhm2H4aOn2gtswwaCuvKJd4kv2bAiJH5CXLU=;
 b=fmLRcmNLSL3eGoIbUCnkrjO/GEiVwS+/jW2Na6TGOyxgbOuriHkT8ZvrfkG0B436gM
 TmIkt8k6DurHlhWkNCskcvNjJGbFMpb2q1FJyedTLfC1/7js9UllLPvnpFLuQxbJ3VcM
 3oCfL6+mV8vSS+McClGDvO200NV8dZtjVpZ0kfm3EtUOuRUzMQC40Z3hAQl0I6HQy9Ce
 SBDjSk5l4chMET8cyQm1OKG6UsMenXS0LVSxIzNt1VZRp5zl7MBBnzdNH9oJ+64P7NQq
 3OImn4Gc3qSwaA+/sGuMeeEpzl1oNEF2EsOf1UU7A9rAIUtGB2lHAEx4epvckFsy/ODX
 kfnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JdtC4kbBhm2H4aOn2gtswwaCuvKJd4kv2bAiJH5CXLU=;
 b=o2MeoVWp2QCzBchvZ0pz2eryJeRX1DBs7inSH6fDAgpktMS2OjRq+BT/16vCaHrToM
 kgFzRudPrNr8qEJ1PkK6JaEGvy7nMV17Vn//8s1bjU1LKQpCiUDU5Mv77zf1HH6zoqx7
 Js4rpR3n6/3PpjUQD+cg1tUtB3tLe3F8SfwMPd7pSOwNN5U2HhqKDtbtcErQMvNSDJhD
 eZwrdsCWCpYL901NwDI91C7PKx0JFMMN+8YK0/Re4cSBuHUHFtFdFPwmZOhPM5C64hvv
 utAxSdNJe6dX6I/+1PmIKAM29A2eai0b4JdqcmEgXPS0yRjVZt1T5Yb0jX0Gg7NswzsO
 brgA==
X-Gm-Message-State: AGi0Pua6iev84NnxcQPS49Pd2pBrQDnf3Y1Unl8Rv2pSN8dcZQo6yjSO
 EJMkqf0CSJvaSdLbCLdIJUQ958AN
X-Google-Smtp-Source: APiQypIDilt4abct4kMobW1YfWO5RuEljnBq9s7CJH/pAg5Q6WiQrema7yGwQRhqGzl3B6F2PNWtzA==
X-Received: by 2002:adf:d0c5:: with SMTP id z5mr11981943wrh.410.1587431229108; 
 Mon, 20 Apr 2020 18:07:09 -0700 (PDT)
Received: from [192.168.1.230] (pd-18-110-238.service.infuturo.it.
 [151.18.110.238])
 by smtp.gmail.com with ESMTPSA id m188sm1375479wme.47.2020.04.20.18.07.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 18:07:08 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
 <CAFBinCBBSU-Q7PgwjkctcosS4H5+ndnK0umb30RrR1gfN-h3gw@mail.gmail.com>
 <033301d61752$eb104f00$c130ed00$@adrianschmutzler.de>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <206042ad-b927-0e0d-c2d3-49a321be524e@gmail.com>
Date: Tue, 21 Apr 2020 03:06:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <033301d61752$eb104f00$c130ed00$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_180715_502463_62FC016A 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
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



On 20/04/20 22:33, mail@adrianschmutzler.de wrote:
> Hi Martin,
> 
> As for ath79, while many people agree that there should be a migration script/mechanism, it's hard to finally get one (since designing it is a much bigger problem than it seems at first hand).
> 

I fully agree that doing a migration script that is anywhere near decent 
for all possible switch configurations is a big undertaking.

I think the bare minimum to do before doing a breaking change like this 
is to have warning messages on sysupgrade (both via CLI and web 
interface) that stop the upgrade until the user has acknowledged the 
warning.

So that people that don't follow mailing list or forum won't learn the 
hard way they have just hosed their custom switch config (if any), and 
that their device is now unreachable and useless until someone goes 
there and throws an ethernet cable or serial to reconfigure it.

If you give a warning, people can just prepare an image with the Image 
Builder where they add manually the config files to replicate their 
setup in a sane way with DSA and send that image instead.

Or for the very least come ask in the forums what to do.

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
