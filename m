Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD95F41A7
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 09:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oT+jvVwUsCFUjxlwZksuQ+S6H9ci53K5fIPgK8l5YUM=; b=sh2PXJ90HoMn4bQBhu6cjEYUt
	/MWHs1uMBkvEBaqk9EYYTtydAx45As2NSCmv7Rlv792eEHUrhkzR0L8gbF7yvBV3MxUyZNDToM3Se
	eyZbzQG7TUin1yHqx4mqQRAl30zOkaL3FdgSRINbb2NKwl16WGb7PyGs+domgPKTdy8b1X7lPQKtg
	IZQFRHWAzSq/BP2bqpU24lWTH1JiDs2rMDFSAh8GXl6FUgCsf/wJKOndTwBwE4WqwojkrO4l14FOx
	tgOXHHenT4lR4WXwZdwgbEb0EE8z9JKYXg0McnzJzHll1WKivUBd85G7YNCLDRcFgH7SHQcoEfiPz
	kml7ibQRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzNW-0008BB-Pu; Fri, 08 Nov 2019 08:12:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzNJ-0008Ac-65
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 08:12:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id s10so3615530plp.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 00:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=UbRTu7yUu5WhI3i0KxIpIE6R1OoEN+1T0OHKu6Yemng=;
 b=vCrp9R2+jrsTezDasdPomRd/5iGMp+pNofp9Ozobc8F2AFq9qsgrL5RlM0Z26FjxlJ
 drvpbhtvELY2fsinv/93aGV8JP6G2MvZybcWUblGJn9wQERC/Ky0RHlAhVzh0RLXa6cs
 0johB1g3lcjzEvf1d3jusBL2iSY5Rnj0kxFJmM0WB9jTzO34IujrIEKREKDsd/1qz/kj
 g0vflBBfo6Ou91fLZ9qPOke77XGFu6hPhOhuUWXKg+E4QIW1Eokser1mwIjkfaiLIlg0
 PMFBDM30UcTm5iL5Lz9AFjbJU4Q3//BAmmK/HNeuE6MquL0kuRbvMXqNFV0vyA7drpLt
 zmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UbRTu7yUu5WhI3i0KxIpIE6R1OoEN+1T0OHKu6Yemng=;
 b=C4nwoGd2AMIfeDe4tZdpkqC96fcp45J+lpMa5M3YSxK6mvlqne2BIXFPJmQa6oFaTl
 CJjXDgC36eBig4jmzs5BUUgvp1drnBI7eYDhHVVyIxFGgnM5wBlPtqSp0bmRDS67oYqd
 xwJl10lQ++wJfXlsDEnG6DsnFdXTCaDue1zOWtMXvFEiqbdG4nGZMIaBN6i0LuoBD7e5
 2R8SnyE/nywahHUneJUWzJ3YqjyCNtO4AWmYJxqandyN4UwP4NcMTPZB1BYsM/ygw9pW
 AlVGXTGObkBMd25XpU7AnlHll2hn2SDYt4HU8kidD8X+dXN29Rt0kNlKdjNNwMb+MzQW
 Ztdg==
X-Gm-Message-State: APjAAAWnyIvWsY+giSmaeEGP7CQRPb9rSrf0GwMrwouYDi/Rc9ZLrRl8
 JM6oGtmtKJmd97tdqPJxIyF7sHP4zLU=
X-Google-Smtp-Source: APXvYqwpBS7zxrQ8QRxY4VAWmktso7wHU53NUL2Vg1/V2cXMNTwdDo2paJCyaL7nT5Zqp/TntbkVjQ==
X-Received: by 2002:a17:902:8497:: with SMTP id
 c23mr8361343plo.209.1573200727456; 
 Fri, 08 Nov 2019 00:12:07 -0800 (PST)
Received: from [192.168.1.5] ([110.77.154.37])
 by smtp.googlemail.com with ESMTPSA id g3sm4829033pfo.82.2019.11.08.00.12.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 00:12:06 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <002b01d594f1$ebb56320$c3202960$@gmx.de>
 <20191107051927.GT1190@home.paul.comp> <20191108075039.GU1190@home.paul.comp>
From: Lars Melin <larsm17@gmail.com>
Message-ID: <a30b30c9-d8e2-bd70-cec3-9aaced800a84@gmail.com>
Date: Fri, 8 Nov 2019 15:12:02 +0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108075039.GU1190@home.paul.comp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_001211_804486_C5E798F3 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (larsm17[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (larsm17[at]gmail.com)
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 IP_LINK_PLUS           URI: Dotted-decimal IP address followed by CGI
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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

On 11/8/2019 14:50, Paul Fertser wrote:
> On Thu, Nov 07, 2019 at 08:19:27AM +0300, Paul Fertser wrote:
>> I see there's some http server mentioned in the wiki article, haven't
>> tried it yet (and I can't understand what "simple" web browser it
>> talks about, probably there should be a curl command instead?),
> 
> So I gave it a try but the results are not fruitful. This command
> should work:
> 
> curl http://192.168.0.1/cgi/index -F Send=@built/targets/ath79/tiny/openwrt-ath79-tiny-dlink_dir-615-e4-squashfs-factory.bin
> 
> BUT the recovery HTTP server is using a very old uIP implementation
> that seems to be unable to play well along with the current TCP stack
> in Linux. The result is a very slow upload (left it overnight and it's
> still not finished).
> 
>  From working with uIP before on an embedded target I know that it
> doesn't support delayed ACKs in any form, for any packet it sends it
> waits for an ACK before sending the next, and I would guess that for
> any packet it receives it's better to wait for its ACK before sending
> the next (as I see plenty of duplicated ACKs from this backup server
> all confirming just the first packet received, and then long wait
> before retransmission). The problem is in the number of packets sent,
> not the size (so changing MTU/MSS doesn't help much).
> 
> I haven't been able to find a way to trick it into behaving, sorry.
> 

Don't complicate simple things, all D-Link routers have a recovery web 
page and you access it with your browser, not with curl.

/Lars

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
