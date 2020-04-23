Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117A11B6566
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 22:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RlOAYGY9n7TqBpOrUkPpWFw5gATReGmGXWE45QkF7DA=; b=fBFaxKpWlInKWsR0Hdfn6sKh8
	4r+oDtlRzyq1tSSc2AdBr4oWBTN30x/eUFWnYGQqkYbxw793u1YJl+x2xq28lQ8PvQSejOjvSN9as
	TsLhmSz8nHvdowst4P2V0MEmUdOgp4uv8I8wfk65+OE8FN1P8sNBWbvLxmYerQ9+9bFqXczrDQGAO
	ubdH2OKeDH0yg51V2p7QpA1Tv/QhGGSpp7MqPRfTDWn5jtnpR3D7lYA2F4zbfxRYetcmBGD87g6Ze
	mBSQn6DF4lfDWJ7C0PXu4ITSDIuN3yiNaT/XzNnkUjkUbLhhLyWVChfOzzA3p7mmdAuqQN4IzcwvS
	h4vMZbTbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRiTr-00075i-LC; Thu, 23 Apr 2020 20:29:55 +0000
Received: from meesny.iki.fi ([195.140.195.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRiTj-00071r-BH
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 20:29:50 +0000
Received: from [IPv6:2001:14ba:8091:2700:4cc9:7c0a:99fe:8cc9]
 (dtckwrycp5g0y1hs0vxft-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:4cc9:7c0a:99fe:8cc9])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id D3038206C2
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 23:29:30 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1587673770;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=esmcE0nxY/nEigfFgPbvYwGN5eqB6aghbjvaHglxLRs=;
 b=RXwNeBzs5Da2qUn7f7/LgHuCXFS+j7cgU9A7o2qFUVempKTE6H9IqU1qJEpslQql0JmhFw
 Sj+aaB490UV8cgASzOEj7WwBO3H2TB+8JvNMTS+9tgrZIetg5HuQB39NuKRyYm3G4mDZEf
 hNk0GHflx4T3VwfHsajw19TiA/szEVI=
To: openwrt-devel@lists.openwrt.org
References: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <5724f00f-24a2-31d9-cb4d-bdd29f8f8c17@iki.fi>
Date: Thu, 23 Apr 2020 23:29:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
In-Reply-To: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1587673770;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=esmcE0nxY/nEigfFgPbvYwGN5eqB6aghbjvaHglxLRs=;
 b=mHcWDnEZpOpvdjZf/GbA6RiM6tk9q5ivcMNm/VELiAMRWyJbercDVWPHbSr2EDSwqGX5VL
 gEv+wOVFg4fjlw9KizxzSJ7TRckH7Nn5CNsArNIpMzjzT8fUb754bOm2JA7eB1AjhTEQX0
 px89H6p0m5N8dx+YH/PbVejtGmcUgMM=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1587673770; a=rsa-sha256; cv=none;
 b=GdLtRDOPhdcBsCOYSd2HqBKNMRvp9qa4RUVYyz/1+L7EAvxbUlgMJhNd2uvcHtceM1sWsA
 VTcG7NGE34M6XUEXxpp3KM1xD/SSgmqjs9F65xH7nZvlGIZipWxzTZVJlgQUnK6PYWl4AH
 laLEd8nSi6FeV/Ffi+n1P6Umucr0768=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_132948_154592_F5D3F727 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Uncompress image: trailing garbage ignored
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

W. Michael Petullo kirjoitti 23.4.2020 klo 19.50:
> I have started to notice a gunzip warning when decompressing the
> OpenWrt images I build. This is with master df27e949:
>
> gunzip  openwrt/bin/targets/x86/64/openwrt-x86-64-generic-ext4-
> combined.img.gz -c >/dev/null
> gzip: openwrt-aquinas-git/bin/targets/x86/64/openwrt-x86-64-generic-
> ext4-combined.img.gz: decompression OK, trailing garbage ignored
>
> Aside from the warning, gunzip exits with a code of 2. The gunzip man
> page indicates that an exit code of 2 indicates a warning.
>
> Is this a result of an intended change? Should I expect this to
> continue? Are we sneaking a hash or signature in there? If so, I
> suppose I will adjust some of the scripts I use to account for the
> non-zero exit code.


Likely we are attaching a signature since commit f81412160 a week ago:

https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=f814121600e5cf43fd75fe93e5b1b54f65b71bcd



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
