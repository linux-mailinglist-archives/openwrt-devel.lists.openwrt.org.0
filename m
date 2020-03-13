Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218F318480F
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 14:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bm19WdlllahzRjYxq3Rhykt8aFqJ4rBDwJoYAVg69Qc=; b=Dcz/pYMaLkDrZWYc+QQqascim
	vtTz7iIVDK80V2lmVf6j/uztCJGwD94PZUAEZPHDcDxZxqLgaQFA8eM1ls9uPk6XzSkZ2faAinY8J
	gllyLnAdyQqjazBqjQPV5FXZYJMzwmKC+/fT/15+5GijqSh0/AiCJ88ItYtDav1SdGeTbzCLeEQeJ
	xmgGPGXxBqM+KIGdYoJnKRH6inyw3QVJG2e+EMajKWY6FqSF4hZvlsF34y3S8RDVrqV/1z706YXwq
	wwZ4XQ7jKVab9q6Tjse0w4x5OtB21SIbXfUictIFaZ/jG9uCPY1YbT1R+tFctjlmJmyETAsKUzZPA
	siHXnRdww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkLP-0008Bq-PL; Fri, 13 Mar 2020 13:27:19 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkL0-0007oQ-Fh
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 13:26:56 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48f60v5YBgzQlG2;
 Fri, 13 Mar 2020 14:26:39 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584105998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I28FwpJipJ4NdULGUWzd/SNgJopvQ5HSEgIV06Aaelw=;
 b=pzXtLrbiM3wlAZ3x4dOYWaeEONHSJ+fcy2pIoP+adQq6dyvq/LAFbveVfAIM4P+ERgTgq9
 oLRGGa6u45x0N7BKeGuxMOx4sao8IKvVqKBnja4q6C2CbOnuSAjSB0iylL0wEELQSS5mou
 aCRpByjKI8gmMpYegWU9sx4WTbqNfr7N6ZIcj3oaNiDCQiZJYCvwUxYwFxIBy1P7tb4POk
 2cnVUj7USVEkxbO1QTEjBbazWvFIvh/skFAZ43fHF2khjUfTOm5G2ldKTZdze1Efwg6oGJ
 l1K+bjPN7G5gPGapvG8GFjh8K81Ox3n9tslxRSyfygmWGwvh8Uoh7lyonSkGfQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id vqqrZ7zSt9Bf; Fri, 13 Mar 2020 14:26:33 +0100 (CET)
To: Catrinel Catrinescu <cc@80211.de>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, openwrt-devel@lists.openwrt.org
References: <20200310120204.6704-1-cc@80211.de>
 <00b601d5f6d7$0a1111b0$1e333510$@adrianschmutzler.de>
 <VI1PR0302MB335814CBB9F315217C149B87EFFF0@VI1PR0302MB3358.eurprd03.prod.outlook.com>
From: mans0n <mans0n@gorani.run>
Message-ID: <48e03485-88e4-3b14-f355-de4f16ba3af8@gorani.run>
Date: Fri, 13 Mar 2020 22:26:23 +0900
MIME-Version: 1.0
In-Reply-To: <VI1PR0302MB335814CBB9F315217C149B87EFFF0@VI1PR0302MB3358.eurprd03.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_062654_813708_D278253F 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
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

If we are going to accept this patch, I would suggest "/.config.*" 
instead of
"/.config*". That would suffice for all local usages.

Thanks.

On 2020-03-10 21:33, cc at 80211.de (Catrinel Catrinescu) wrote:
> Hi Adrian
>
> After successful testing, I always save the .config files, attaching the revision number, like .config_r12345.
>
> And it is a cosmetic replacement too.
>
>
> Thanks
> Catrinel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
