Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0BC153197
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 14:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IRr/MyOQWnd6vdC06GJVc3hLMgig9RsYvKwS6nKJfyA=; b=BYJrtG1LQ1mUjXxFVPdMcWE01
	DlpG4sHhYXlRejGCtrMd4PH8Basvnu+PzzkMmu77daKtN03bfo5xLLNNpZpvcwfMG8t9xwsHcm7wT
	eswdEf7A7SUVkiXonKbL+UAd7Nt6tIKoAekbwgKaGPKAoCasXj9VD9h5hINy3wQ4IAKQoiU6d4foj
	32lcoe9robYuwwOiB6iwRV8L8k6jg4D8rm+s7wtwTBArNDS8Idmxwwmec+15EMEna5ZxUGJisr06d
	9fDnaC1ke+DT2ecPEUxvHcdI96p7MuJjuNFuDVPFrr+Ikq7wQ36Vs5dozbfiLCx6Vg+yiET6716lZ
	oLxaGAryQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKZn-00047V-BD; Wed, 05 Feb 2020 13:18:43 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKZN-0003vA-6H
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 13:18:20 +0000
Received: by mail-wr1-x429.google.com with SMTP id u6so2738429wrt.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 05:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=UTBKmqLMPmKI/YD24Wjh+luoTvpfvMRg3Md6p0AKEeQ=;
 b=bFLLkNuptXSWS4xKgfArRYy9qdoKII2+Y86PmuP1FHuF/An3/EqIhv7T0VIM0KxM+G
 utPlppldINoOS1e8+VWriP0yvMe6V7qphoCUMohlqWHMvQ/LRcUgHn8i8P5aHfXGwP0T
 UkTkcrjc9yHNK4elIcVrVfaC0Tm/0AJIRIjUNhnRd00MdXjcs/01OMMJj/v5sZklvbgs
 icbNiNfYLLPoTaYv1//3tygaMLhJsN5yDcb6Byb9rWY9vWJrDk2GiLXTDDPkF2uUfQ/h
 hJXm3WOFnCb+mDYIZxxX4ys0mwjacD00fR2AULRtuV5OpEgbdbESnaMJTAOcM3+6t4dv
 Kh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UTBKmqLMPmKI/YD24Wjh+luoTvpfvMRg3Md6p0AKEeQ=;
 b=SUL5vdJkd/DRpyGNpg53DPtICU9lVwfXhoB+kS7vRBmxLJCDN3NSSjotul4PZZVC+S
 /zbrZwP6CfyeXbuMZtQdyrzFWPJ7EWFWAc+oWD2lTwVZ+qHgjV2Z1tN7m0auFLdwyNzr
 nRmt0By2BBsr+P79sCVCEd/kC1DDrhBqYEmQeQXlBMHbG6d3o6q/KbSrPCADtDBQcPUr
 DRouIaJOV48e65DUwBZ48V47osKRVab5eJpoGH91kk7sgDnRIOTxnjq6bxTGZNiuCJTl
 +WmpL2i/Zu2rM+rzayx8TdYIaJRIqtbVPzPbKkpc1/41hi1WN50qofRs/6Eva4vzk5XE
 fHhQ==
X-Gm-Message-State: APjAAAV92aEp3YTK1vuP6ppV2FyI6DaJYnHKvbsEz4v7NuTCXOqtmeVn
 1Bt0sQKGBh+eHSTzxRD7sQeU+UnF
X-Google-Smtp-Source: APXvYqzdh9krwLTYN2dVeSVK6NlpzZe2dgWZxeS78IT+BaAra61ZWA+sATE9aa+8oXcp2N5orVrO6A==
X-Received: by 2002:adf:9dc9:: with SMTP id q9mr27070488wre.286.1580908695287; 
 Wed, 05 Feb 2020 05:18:15 -0800 (PST)
Received: from [192.168.111.100] ([188.14.113.33])
 by smtp.gmail.com with ESMTPSA id t131sm8191670wmb.13.2020.02.05.05.18.14
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Feb 2020 05:18:14 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <alpine.LNX.2.21.99999.382.2002050532560.1717@localhost.localdomain>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <dd434e5b-b3d1-3f3f-3456-aedf902b2dbb@gmail.com>
Date: Wed, 5 Feb 2020 14:18:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.21.99999.382.2002050532560.1717@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_051817_288163_DBCFC4AE 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Protecting a vulnerable host behind an OpenWRt
 device
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


On 05/02/20 05:35, Enrico Mioso wrote:
>
>
> the LTE module runs old software and probably won't get updated as 
> frequently. I would need a way to let the OpenWRt device continue to 
> talk to it, but stop anything from the outside doing so.
> I did my attempt with the firewall and they seemed to work right. But 
> wanted an opinion from you guys!
>
> thank you very very much!


There are a few regulars that usually answer these questions in forums, 
so if you don't get much answers here, post in the OpenWrt forums as well.

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
