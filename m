Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972351315E7
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 17:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCUQA2VwUSHOOlJ/fzaRTGzPbeLLfQa5bSQTR+2aCqc=; b=By+j70GK3c65db
	0SwR8rJPtr8VbATgUix20Edh5UzEKhvPQxw1zhZwgWbKmgltYizQG1Jb5kYq5ydokkAZFxUWdG/UN
	Tdvc19zxb7bDy4L7nA750h3jjIs0L7+Mi6cCTBMzvxvq/AOwHQshkVxInwf0oOnWBoIWuzKfBrs8G
	z/rBcxZAzx4lT0VDaH1kXx0BYOfG2LOk9sZxU7DcUlGA9ZeS6Ouk3DQ1IY9mqUbTP78Qbqg/5HD23
	EdNgmmNApaomk/Q7qAjJ26x8urP96Fo4lVCaTaAPpls6zlPzmvUQYFe1P0aAjTBfMcvjgLZO92J0z
	MoTIOHbvEiPCSfyQZNRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioV5X-0002nB-PD; Mon, 06 Jan 2020 16:18:43 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioV5Q-0002mg-0J
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 16:18:38 +0000
Received: by mail-wm1-x32b.google.com with SMTP id b19so15500412wmj.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 08:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ZGnyyBS6+Gf+POnS3UfAGQn/Cm3cXaBRKjLTHjruWVY=;
 b=uHIm3Mr2dlIsGwoGcQkb1BxgCTWbsqWLGyVtUbI/XuWSmMmjbHpvSky0pXxLSoAtKJ
 laGBGKuCR2IR8Zk8Q0mmzWJdN1dmIgPIY4XdElNRIbx9PuJUueSPAN4R4YYKgUOddPi2
 rNEy+KaQ+Ax4RKUWjO67W+biAEkK3pzB5MPWaQdNRBOWugHqfu372X0U4gNviTIyV/B3
 XWnXdpZkJ8j4fnbLz17yaKkEB6JVH8hxHcZAF7WAW9ujKt4Cjj1M/ixbRPNmPk2Th8Ii
 H5TCdhw3sbsDIhhTDegWHlOJJKdT2QVjAns97WkUKcOQdETcSYYn4pklthwXJjvOjYk9
 u2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZGnyyBS6+Gf+POnS3UfAGQn/Cm3cXaBRKjLTHjruWVY=;
 b=ijHprPf60eveOyB+SaC9ppE94TDIWmLaIzSEiY26e5+cK8+ZBX18qMy68TEunUpwr1
 I+6MtVqmTsU1bitG5rIcKU8AdV/UpFwEMBFOkYvP32+XQFsQbqj99CGYukqAPJMHi0lh
 88G+IzMCIebdEMK5TQtcKK58SmYiZF1fQfdtslozWnzRYe930Zg6Fdae5gNtQN6zsFeu
 1fzk8Y9rMzKNDPhxKho3xoAbCSfsu6p5qC8UvY3vn6eIfFeMLeruyHuYntCVBeJtXRlY
 yR/F7QbfdBrAAaG0//ncaw573NOEpWTnUoTiDDQ45T4QLC0Hw4fqAq1dqQSWWRi2XJgH
 ICWw==
X-Gm-Message-State: APjAAAWfXuZttnIW9IPo7rVAzXA5Sev+e/FCjaY09wZnoYOAtOwxqmrQ
 LMPwwkgZgjBY/HqdX0ngvlvhLT+EvnM=
X-Google-Smtp-Source: APXvYqzOQZnevJxzWgHfLpndnP1VCxoUOEa3zXc2H4aErUzXQb4O4nyd6yx5i1ifQyBkuwZkBfMFYA==
X-Received: by 2002:a7b:c151:: with SMTP id z17mr35231755wmi.137.1578327514003; 
 Mon, 06 Jan 2020 08:18:34 -0800 (PST)
Received: from localhost
 (p200300F66706DFAC1C7FBAE9057843F6.dip0.t-ipconnect.de.
 [2003:f6:6706:dfac:1c7f:bae9:578:43f6])
 by smtp.gmail.com with ESMTPSA id n3sm71750587wrs.8.2020.01.06.08.18.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 08:18:33 -0800 (PST)
From: e9hack <e9hack@gmail.com>
To: openwrt-devel@lists.openwrt.org
References: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
Message-ID: <73300b9c-a58d-0f88-0c9a-e99303da8e99@gmail.com>
Date: Mon, 6 Jan 2020 17:18:32 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_081836_047917_8F0F997E 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

Rpcd generates a page fault:

Mon Jan  6 16:52:07 2020 kern.info kernel: [  595.827360] do_page_fault(): sending SIGSEGV to rpcd for invalid write access to 00000000
Mon Jan  6 16:52:07 2020 kern.info kernel: [  595.835782] epc = 77f0b588 in libc.so[77eee000+9b000]
Mon Jan  6 16:52:07 2020 kern.info kernel: [  595.840981] ra  = 77ddb9d5 in luci.so[77dda000+15000]


Am 06.01.2020 um 16:59 schrieb e9hack:
> Hi,
>  
> it looks like that uhttpd/luci/rpcd is broken again. The call 'ubus call luci-rpc getWirelessDevices' does fail 'Command failed: Request timed out'.
> 
> Regards,
> Hartmut
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
