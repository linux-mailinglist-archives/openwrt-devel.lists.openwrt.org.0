Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8437E10C8A6
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 13:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lg8dWr2roZVMcZRcLo8aJZEH36GK7vgfwLoz+hRYBg=; b=YSh2hQT5bWGui3
	KNaDi5Owzp/0JDvMk4/g3Bti2z/fGppyOSbOUARB4uKzUyhFyhKJE3E8jVX8CqojzG3UjV2HhoDEw
	hEDMCU2bHeZ8Q34m0xBeiAomXHwo//vKIPFAbIWV2SiIIy+FqlcuSJcXAMXvTYC/kp9s/sRG3cRE9
	2z9DEgzPQFHCozZiBPU6QbjfmfR/d7OK3wcoamKlrfw3EGmVW4a7+kzHxtWqMKGIP0CzGBchdP4hu
	kqOMh+XaTKg8kvK0aYwPHzzAdKbg5USKE9jsim/2BXhDfc6JQiCmWD/Q0S2ZKtrDmyoLXolOHWN0T
	7I3dLnM5QpPOeg8MU6iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaIrX-0002Va-4F; Thu, 28 Nov 2019 12:25:35 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIrO-0002Uy-LE
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 12:25:28 +0000
Received: from [192.168.0.143] (ip-94-112-143-156.net.upcbroadband.cz
 [94.112.143.156])
 by mail.nic.cz (Postfix) with ESMTPSA id F3BEE14132B;
 Thu, 28 Nov 2019 13:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1574943925; bh=riUwNNoZE6jOX39GD4hodh5IZJr4nYJhhKFC6yxWl8o=;
 h=To:From:Date;
 b=cDcBCGTkTyXl20rHM5XYcwv3seR9MnaAa8zMQmwTmtqDPf2nZXvfr0ldR6hcRNRX4
 fK9aKYlKnu8H4+Ty3/gevT5gqQYQjqEXoyeXSdV8KKnCcQubx/r2nB8uwqOBjq4hL1
 SSQ7chS8M6s8T8qGzUx6wAt2gHwsL/VUcseCpUj4=
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
 <e8117837-aaff-8ef7-c24b-f6359d9d4ed4@nic.cz>
 <20191128130139.69be44fa@windsurf>
From: Jan Pavlinec <jan.pavlinec@nic.cz>
Openpgp: preference=signencrypt
Autocrypt: addr=jan.pavlinec@nic.cz; keydata=
 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
 rj0rIUg4FQ==
Message-ID: <2b23d42b-59c1-fd46-c5f9-fa4ea11928d9@nic.cz>
Date: Thu, 28 Nov 2019 13:25:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191128130139.69be44fa@windsurf>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.100.3 at mail
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
 URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_042527_147237_EC607AFB 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH packages 00/11] SELinux support:
 packages feed changes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I think that maintainers of openwrt/openwrt repo are more active on the
mailing list but openwrt/packages maintainers prefer GitHub. But that is
just my personal feeling.

J.P.

Dne 28. 11. 19 v 13:01 Thomas Petazzoni napsal(a):
> Hello Jan,
>
> On Thu, 28 Nov 2019 12:35:36 +0100
> Jan Pavlinec <jan.pavlinec@nic.cz> wrote:
>
>> I really like the idea of SELinux support in OpenWrt, but I think that
>> if you send these patches directly to
>> https://github.com/openwrt/packages/ they will receive more attention
>> than here in mailing list.
> Thanks a lot for your feedback. Should I do this only for the package
> patches (i.e the package feeds), or also for the "core" changes ?
>
> Best regards,
>
> Thomas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
