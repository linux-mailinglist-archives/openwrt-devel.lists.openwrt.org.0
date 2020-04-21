Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B661B1EF5
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 08:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+YZQaDTXNgHpgfrn2JI0KwU6ST+Kf1XaSkEppEksyAE=; b=IpS54CipF4uxw7LitdUNK8zHw
	BjdbAUx35TxPGR1udIqlfiOBQ2hAgmJzLjSkyuEr/8g9vxG0bNHz90kXd6kJfdY+IbkbJJplXnhu3
	yWrKvsRQGozx3fI/NYVJ4nekLFlpYS+oacDwDGg3DmCcI0I4ChYZ4XUwo3n1a4XeSMxQN0rVd84FJ
	rX+PSxfi8IXFFtMNvueYXSbrckBHpqKfZBT8cgXpjyZ1r4pJ1oLX6Vg5cRI9XOGLRsKw1HT1BkFEQ
	7pzVxycUDq2+beUNNdbKyIsI9oXGDM23DS3fkRy0v73jZWgKIYKyFb4P8jQ3rrjUuGvzM9pBdSZnr
	YRrMp5VdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmfM-0001Af-H6; Tue, 21 Apr 2020 06:45:56 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmfE-0001A1-Re
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 06:45:51 +0000
Received: by mail-wr1-x435.google.com with SMTP id k11so15131546wrp.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 23:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=J0LbLDwSvNxuHMmIzcQnyCRAusmPW6PCXl/oZiNM8x8=;
 b=RoLcj6OAaL0APg//uJqhYDqXtgxLnbnv0blYEYOuhXSExLZu+YhoKBV87wXYSDrmXW
 9pAn5V2lG9sLpfTn+EdzTsldGCjSWCKsE/1/LKFHNoSIK6Co1r5T7rQ0emc0j3XRJdDB
 FQ09cYfGQEpbovR9NV1jZEzDRSrfrWeton728diaNwy5l0xv6l5cjwgUNAHC7MO625ff
 GRhcgBeMAO+xvhyBzizcFekwdKU9FbS19sG9YIwbbugusVDUseKLK+iyjEC6SmOsVcRf
 Kh1gW47ENA7XZpeLV9/i0BUv8rpNRc5QgRgvpfeJKDcHS2PlzjawSHFDwmzJ0KVIc0aS
 JSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=J0LbLDwSvNxuHMmIzcQnyCRAusmPW6PCXl/oZiNM8x8=;
 b=aZ3CwRglUSndbQvERrlsYXcJdSIcwEksqRvqDpbVDyKaeud+ziHII2jaBR7Rc3jGgL
 rNL2d6iITKLlFQdg7XFjBtJ6KpaIY+Afhf3FrKl68BvPdV7lyw51FIzLzUrJPSV2AOvU
 V1wTx8eNJejnzDL07pjmXGjdsdpqg7w9AhK4MAiYLAxPB3S7RheFbCHnPfAbPAxoMkIP
 LDczxWLJZ8K3s1u7osLrne3H64NT14SuekoHCJ00ryVAQl+zvADZeSX5QkJwN52S4SJf
 X0SDPel5fMOlOBdzeuJKah/Cstgpn2PT421xunsrw3R1QH0r0i9rwNdCVlmrG6LBxdfT
 OrXA==
X-Gm-Message-State: AGi0PuZmwQzBOplEm0IUvvfZqomNDsU6mmqJIDgPC8qjCi/cWf3vSr/D
 vgL1BmNsr4U+6402KABS88pwHL3g
X-Google-Smtp-Source: APiQypLi3YfJjtCU8FR/VrL9aqrerW9CnKrnSF9/YR2nLNBqRXGe0tJIMmgM4g/AzZJU+J04Oo2IFQ==
X-Received: by 2002:adf:83c2:: with SMTP id 60mr22141719wre.169.1587451544646; 
 Mon, 20 Apr 2020 23:45:44 -0700 (PDT)
Received: from ?IPv6:2a02:168:6806:0:8cfd:3f88:2b59:3d1e?
 ([2a02:168:6806:0:8cfd:3f88:2b59:3d1e])
 by smtp.gmail.com with ESMTPSA id w11sm2145812wmi.32.2020.04.20.23.45.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 23:45:44 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
From: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <e8732ba1-9963-7b24-0c5d-017d840c312d@gmail.com>
Date: Tue, 21 Apr 2020 08:45:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_234550_597555_F780BEAF 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [klaus.kudielka[at]gmail.com]
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

Hi,

I own a Turris Omnia, which already is on DSA, with lan0..lan4 in the kernel DTS.
On the box I read the associated ports as "0".."4".

For this particular device, Option 2 would rename them to lan1..lan5.
=> Please do not enforce Option 2.

Personally, I would prefer a combination of Option 1 (if devices have no labels on ports),
and Option 3 (labels on the box should have preference over kernel labels - user experience).

Regards, K.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
