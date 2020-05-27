Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E078E1E4B14
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 May 2020 18:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=trlP7wKCgvawOY/8eLZtgKAq0UBvTmJIdTZSMz+k2as=; b=H2IPo/Z8SgOuBk1zYA+foLod9
	wXC/qDwnmsTgwXO+e4uUtPAbvONBykk9DlfJJAUjUvofJuqHwPNxlDX2ih+1/3/ZfWaY1FWTRdPEc
	P0JbYkghPugmi4zwd2iUMEi7CVQVi80k0pExwJe3NUBtCiWh5kVml27xtqNjEk66CRbVYyudrOJTN
	7nao8uWSsoYGK4XxCBGPJxrH3sPt0e2lKeoqskRM6q6jAwGgNJYE7rXfufqb3CXdPJbows4/KcykX
	3ozYcp0Zui0rJCWK1U0+NT8Cv8kx6ME64CkAlopIs0bdAU9OywT1F3MkacikJo1KTdnTW9/7WG2dK
	Zn7KC63hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzKK-0005KQ-NG; Wed, 27 May 2020 16:54:48 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzKF-0005Ju-7o
 for openwrt-devel@lists.openwrt.org; Wed, 27 May 2020 16:54:44 +0000
Received: by mail-il1-x144.google.com with SMTP id q18so3613651ilm.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 May 2020 09:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lSIYXlHDCWXLQlJr3keQFg4RIEMiWx8B5Nbb+2oP84I=;
 b=kUW1I1Dmu8dH+/FpGJdguL1FhxDO1gBGYJl+uK6lwfk5fw0STF64ZvrGCffIAUb2Ax
 Vc4owi32HTLLaXM6qq9FNt08ol0jCW/oUrSCgleuyPZd6QO+h5orAZ0LetV7tEuk7GfW
 MgDcb8CW2squ9NSbr85LavtmCbtked6HTTfiSI9wj22AY7RyF3YCzT/N7kyY9/Ip9Vy7
 Q2JTwS7p7IP0lFpFNpcTDxkI2vYii4XK30HzuZqxOYYaVqjytLO1rlmcwRBvRL+vNvgt
 Tuf/hq/A5k4JhV4Y72gyLxeVGE9cxGnRcVHe5/HeUjb4sbvaep68cKU7fS2DrPaKQ5St
 otcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lSIYXlHDCWXLQlJr3keQFg4RIEMiWx8B5Nbb+2oP84I=;
 b=OVX0zlGvVd33SncPB3xWD3NqAmOqD8XSpHYMjdV+1AQq8rB+c27lBYngrErisdpIUk
 hglFHxnC52mkobQA8UGaq6r9b/dMsgRVDyIZDFNtGa+kI4SKhl4wQCakAS01YXVILYcZ
 orSonIgjK7v2ruRm4J5xyhG+kUv7K7GfRb54FRbwA1zkJjmbzP5088fM9VGM73uEIhJu
 VBnhDn/AV9kS0KUNPAMbBfQDlWFJAj79CL5j9aVhfqvGYgWTSUrsYKX2YYJL0yJluoCi
 3H5A/GyoRJeRe8QXrsHya9r1pZitTpYcPMJk3e7/V38YP+rSwj8kcGEzTDSbAz+ZFrJ7
 NshQ==
X-Gm-Message-State: AOAM531/rryRiFiGYC838e5/Jp3HhP+ZQvD54U9vHoog4kEgLjaXUiGp
 Whbq4TOt58xpyaLmzK1m11HYFMvyBbXHHQ==
X-Google-Smtp-Source: ABdhPJwu08unoKwutNEhEtskd5g5xYTlNi4rhoKMunF2gDt3Ym+isOlTL1Iz42Spc4nKwtvFYKDqkA==
X-Received: by 2002:a92:cc4d:: with SMTP id t13mr6202144ilq.213.1590598480950; 
 Wed, 27 May 2020 09:54:40 -0700 (PDT)
Received: from [10.137.0.24] (c-98-213-55-3.hsd1.il.comcast.net. [98.213.55.3])
 by smtp.gmail.com with ESMTPSA id w23sm1500230iod.9.2020.05.27.09.54.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 09:54:40 -0700 (PDT)
To: Nick <mips171@icloud.com>
References: <20200522120650.64ec263e@meshplusplus.com>
 <mailman.16487.1590386138.2542.openwrt-devel@lists.openwrt.org>
From: Alex Ballmer <alexb@meshplusplus.com>
Message-ID: <7be12f56-6384-d4a7-75d7-e641810887c4@meshplusplus.com>
Date: Wed, 27 May 2020 11:54:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <mailman.16487.1590386138.2542.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095443_329977_7340A5F3 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Issue connecting with Quectel EM20-G modem on
 openwrt
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
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I am also running on the appropriate master branches of libqmi and =

modemmanager, so I am not sure what I am doing wrong. My guess is I =

backported support for the EM20-G to the qmi_wwan driver wrong.

I couldn't find a commit in linux master that explicitly supported the =

EM20-G, so I copied the changes in the commits for RM500Q support, which =

I hear has the same controller as the EM20-G.

Is there a better way to add support for this modem on an older (4.14) =

kernel?

On 2020-05-25 00:55, Nick via openwrt-devel wrote:
> FWIW, I=92m able to use this modem just fine on a USB3.0 M.2 slot with th=
e current version of MM and libqmi.  Let me know if you need any details.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
