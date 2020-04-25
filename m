Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E133D1B886E
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pBYzkCEnf0w1oF9fFEsfA9/XoGbJVVD1ZUHKNJGKffg=; b=bx5LY25OF/04xQBrGupqrlnpI
	mXzr6JD4rm1/Ax9DRSmmpa4mOtOh7C7u9Qk9qTDd/r3tEJ7cT17p4rxR2mc0pMNhEnJc6hgETAthW
	w/mBTS9he2bMQrZ8+HCHULEgb1JJr9gz5stlRd/c3zEmKSQnpFQ1viRIPb1puJXoirajoVu9YB0AQ
	jWsWpuQqhRi9GQKUeFOphpZ4oLA08BIZr0vbpfHaMlgdRIDGYQUsLE3kpmOSOPYy01KUcjVGz+vJ7
	7fzHm1Hsp/YunrPXOr3kXkRcShlJXAmCr5GxMVky6YkP3e4JzB+PH0nh5zGNPyxha0d6SdhzWRF94
	Uz4nuWXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPHz-0002Pn-JS; Sat, 25 Apr 2020 18:12:31 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPHo-0002Og-Sy
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:12:22 +0000
Received: by mail-wm1-x329.google.com with SMTP id v4so12544753wme.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 11:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=TkdgHeg3W1JPlhImP4ib5LFwVLYy8XoYj+0kCu+B6k0=;
 b=TXCTfZi4tZWraaUKMfNFwGsavsjAKypXhxj4Yu6d31BGf24JGmLsBzlnkXz9uB5DLS
 QAjiCgzhVMyfOzO7MIic8aib1Xhqkkislt7zI/5893aOIJdIfF5sw+222J06Iqu2kYvc
 clmB70j1aa5D6v4Cu+D5TJpRCDAWHAo7me2FyxZwhDQwWROiLWN85fY1ramceIhJ2iye
 grkUFCZU2njZBNUDCXNi7MZLAj8Md1tzv7MmW4odWUdFIKa9G9IdidtOCgGUSbloTEAv
 dmw1J14d/7Cq+ogbQKvHJlA8Epk95JWU3E0pKvgRtarYsaIMdpleGaDQdMPgvGwgxM5g
 Oq5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TkdgHeg3W1JPlhImP4ib5LFwVLYy8XoYj+0kCu+B6k0=;
 b=cLxt0T9jprOQdhPWcIX3nc28H+gRtZ6+/E1lT4uarrQMjh8b0gzWZhlN6y/5aj3DD6
 aWbJbjg/zkCVp0KAZpmJl3+XqlVVoVOpMmCILZ0KkJBKOOzYfTCIg1tKR3BJhM3azgJS
 itpyEPLsNUWRAyo9s6m9hhkqtpASba9+O7G92X5xMF+fIEPBaAsuTznvwdjorTrry4yL
 jVqF+uMp5T6FCjfCGz1f6hQd527dREORzMK83pJdcZwYH/CGYoU01638dpxvAXkd64SD
 zUhLO211XfW4trw4Qw/gaJa8Piv3RWJh3QGVdXeJrcBqMihWGmmLeIpKwIFGKkvmsEeu
 wSUQ==
X-Gm-Message-State: AGi0PubJyyxDa3+gOLlZWPaD3gzhO5uvDPoK0Pop920LVJ8rea36g9if
 IjJ6PQQQrvV2SjXsJ1keM8M=
X-Google-Smtp-Source: APiQypLVDnPF0jhnb0Htf9/3Lir0LGkxx0mZtgvW8xCElVUt48FegaQF951IVSuaKPfrEAbLiW0GXw==
X-Received: by 2002:a7b:c38b:: with SMTP id s11mr16960079wmj.55.1587838339047; 
 Sat, 25 Apr 2020 11:12:19 -0700 (PDT)
Received: from [192.168.1.230] ([151.68.10.90])
 by smtp.gmail.com with ESMTPSA id d133sm9312466wmc.27.2020.04.25.11.12.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 11:12:18 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org, Thomas Endt <tmo26@gmx.de>
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <bd261d22-6ad4-a018-63c0-c2e5ad9b90de@gmail.com>
Date: Sat, 25 Apr 2020 20:12:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_111220_970157_4DF1120D 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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



On 25/04/20 19:46, Luca Bertoncello wrote:
> Hi list!
> 
> I'm not sure, I'm asking to right list, but I didn't found any other
> list about OpenWRT I can ask...
> 
> So, I have a "TP-Link TL-WR1043ND v1" running OpenWRT 17.01.4.
> I'd like to update it to 19.07, but I read on
> https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wr1043nd_v1 that my
> WLAN-Switch is "discontinued"...
> 

The only "discontinued" is the "Availability", and that just means if 
you can still find or buy this device new from somewhere.
It does not mean anything about OpenWrt support of the device.
The device is still supported.

> If I undestand correct, I can upgrade to 19.07, but it will be the last
> version I can get, is it right?

The main issue is the warning about 32MB of RAM you see on the top of 
that page.

If your device is HW Version 1 (white case, black antennas) then it 
might not have enough RAM to run OpenWrt.
You can try upgrading or asking in the forums if someone has already 
done that.

It seems Rosen has one so he will probably be able to tell you more 
about the RAM situation on this device.

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
