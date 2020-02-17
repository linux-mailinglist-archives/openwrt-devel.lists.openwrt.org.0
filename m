Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A7161B33
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 20:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmI7s1aIaTPWcEosn4nrjUtCdwGOV0jk+S4P93Deu1Y=; b=DvefWpoleamOap
	hGUU6+Y74qrk3U1/Lg18MRNw3xQUH83L/Y/twQgT5vTWMsnH9dwuGP0BcTCpQba991bY193J76Rmg
	r4R5SvObcnPI++l869/stcxC/hm/gQDZr5PpqJaZXFr029Mii8Y/6K4chrE28eO+WK4oPmo76kHOB
	UzqRaCe5t3utNNgWM9V52UeGt1Inx6pyO5IEc1K4FbHr5kNhyavxmaCBySU2g3CXfjJbhWLLiFRLj
	fxsPNja3up+Mzwn7cpsXR2XRr8snz2WVOQp/qRJ9/QkQiT7Oo62JDFFnCXIVw8+M0XmE9CJyl3DBT
	frDDnI4kg/bGMuguqA9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lgy-0004yI-26; Mon, 17 Feb 2020 19:04:28 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3lgr-0004xy-9m
 for openwrt-devel@lists.openwrt.org; Mon, 17 Feb 2020 19:04:22 +0000
Received: by mail-qk1-x736.google.com with SMTP id z19so17173036qkj.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 11:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4efVcNLxwo9rCX8DW8177ZkCTmbcLkk6WQOIBXLM5Gc=;
 b=pWZnUkYVX0hdJfcLKJhvnqmH8tFUK53EVSCR0Y85lyZS9LTp7JkqjnWEhC6LbH4KBE
 NqVRVlbpDINphp5bbWu9ZepKlUlg9oIkbSHPGESi43QfVQuicZcI417SW4wnVgmDaTyl
 h+y7DG6S7I00cQJ5Dfu/STLJUs5zcGfZF2bj5UInuSJciXyTmvBCQhXWCDCnB96cOGDE
 UTi6broQ+b+Djnyh5+sgzo9sJ99tuidcSfvywAd/+ViHtxOMh0xmNlJ320xgC24K6Csq
 dGpzVLGS9t8FvQnX8XfqoWdOcCJsJ33tEVYTx0/qzXjavNiHHGGV75qyeHNhXDU4udAj
 UtZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4efVcNLxwo9rCX8DW8177ZkCTmbcLkk6WQOIBXLM5Gc=;
 b=rWqMQrteRHxTFC668r6dkviW8GWQ5+X8j23f1AubDXbGUqGKjXAB1Mnre6JvAIdsnD
 ghOUPE1bpL2ZxUwvf628Iw/0dvXXCWUUXFl87oMNtNvSXgo6ezju7zIbccxRFRHRE88u
 WrTaC92oweDua/ELSqvjgw8jeovIlHIcPnCmyia1uignvX9f8g+iC3N/9yDAyiGo9FYV
 5f2kMBsCEBBnE2JwqUeg+Wyd+mlYEwX0iw9U5/XFXcXYnfP2lI++U6vLJk6nJRyjUJQj
 2aCpz5eX/QyMePOcd4FBhvyuUy1h/6BOPe6DUvfSIGZTTcRkXSzd9Ey8qrP6SnFmo9mg
 jZOg==
X-Gm-Message-State: APjAAAWv1l1SfWwvbY9xvA1ti57jrZ/GJFDxiz24tsPjBOmLsHuCFl7J
 9PMOQXfw/lK7e2nngsc5+btyGFgZ
X-Google-Smtp-Source: APXvYqzCEbjI+EumIUoO/b2BrIxWGWPx3bptIi1xcv8WSclvedH10rE2pJABhyeLJ0xuENkWibtDXg==
X-Received: by 2002:a05:620a:1530:: with SMTP id
 n16mr15702603qkk.394.1581966259688; 
 Mon, 17 Feb 2020 11:04:19 -0800 (PST)
Received: from lord-gnome.lan (pool-100-8-210-135.nwrknj.fios.verizon.net.
 [100.8.210.135])
 by smtp.googlemail.com with ESMTPSA id t2sm685154qkc.31.2020.02.17.11.04.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 11:04:19 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
 <012701d5e5a4$f8179530$e846bf90$@adrianschmutzler.de>
From: Christopher Hill <ch6574@gmail.com>
Autocrypt: addr=ch6574@gmail.com; prefer-encrypt=mutual; keydata=
 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
 aBKLz78CnHfMSbo=
Message-ID: <cf8d92bc-5b60-9c6e-bdf9-9f589b943de3@gmail.com>
Date: Mon, 17 Feb 2020 14:03:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <012701d5e5a4$f8179530$e846bf90$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_110421_363308_88079DF3 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:736 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ch6574[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ch6574[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
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

On 2/17/20 10:14 AM, Adrian Schmutzler wrote:
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Christopher Hill
>> Sent: Montag, 17. Februar 2020 16:03
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
>>
>> Hi,
>>
>> New here, and am looking for some advice on porting an existing device
>> to ath79 - specifically a Mikrotik RB493G (which is NAND).
> 
> In case you are not aware, there is another Mikrotik NAND pull request on GitHub which already received some feedback:
> 
> https://github.com/openwrt/openwrt/pull/2733
> 
> Don't know whether this will help in your case, though.
> 
> Best
> 
> Adrian

Thanks, yes I was looking at that as the basis for what I was trying
here, and it makes a similar image as per mine too (the unbootable one).

Oh well, time to experiment some more.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
