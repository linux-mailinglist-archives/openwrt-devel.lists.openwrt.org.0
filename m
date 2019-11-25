Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC81091E1
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 17:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i1JI623Tx14ZcFhOuPhZzpoa8HqO1IZAp9u/SzeazSY=; b=fQKxUZ4kghU69sxXAXhJE44gr
	vBJZEbihKX+zNZ0Q7g9t3Vrcsk/vjZBqbKkP4nhqITcne96hvqPErKlnjWESpj1735VuMXVlCsV7G
	Kg4ibNaQwOvF+9kmnVBpTRRW7I4lRry3FQxzHVF9tktvr2MlisUMXp7r7nAqoUl6eBq/uX9z4cYgB
	4LarhLsqxCAhOrK+1003Bg5Mh1g2n1Bjf+T+dAfLtRLGitQiH9hHGnMDM47bdU86sJR3o8wEWNEv/
	JaSrrS4BKK+KUSNQkbVkalgGkHtu/qEDXVz1qrZoZpsd/Sa90hPNcibd2ASiUhIBhEm1dUFuNl8Vn
	NcwqawPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHJ8-0004uC-9N; Mon, 25 Nov 2019 16:33:50 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHIo-0004kL-3x
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 16:33:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1574699608;
 h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: Cc: From: References: To:
 Subject: Sender; bh=k883/t/eQPtagXZIPfyDlD6wb3IKkU/l7D4ba3bKVDU=;
 b=id0zHRvN5aipIx0XjNUX/i2GTApxtqUDY4MoV2Ddpx5vb+NAgNo2/3W4FS1eSOrlDtClzYr7
 Fe+MxHwK5CffZ9yr+T5gMZ5htAT3DTKs5pokuvUO/3cz+Wo0RCk3bYQJH++muBr7h/EcgYgG
 LFSRkMpzUYTAEOSpbzCdpi0XDgo=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from [192.168.0.124] (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5ddc0257.7f8d3ab43960-smtp-out-n01;
 Mon, 25 Nov 2019 16:33:27 -0000 (UTC)
To: openwrt-devel@lists.openwrt.org
References: <20191124215301.1424-1-freifunk@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <8fb7aa97-879c-4826-aab5-f089c72d2bc6@gorani.run>
Date: Tue, 26 Nov 2019 01:33:21 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191124215301.1424-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_083330_270883_47266CB1 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.61.254.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: remove dts-v1 identifier from
 DTSI files
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

I already read your previous mail two weeks ago, but then I was not very 
familiar with these mailing list stuff (still I am). Sorry for the late 
reply.

On 19. 11. 25. 6:53 AM, Adrian Schmutzler wrote:
 > The "/dts-v1/;" identifier is supposed to be put once at the beginning
 > of a device tree file. Thus, it makes no sense to provide it a second
 > time in to-be-included DTSI files.

Three months ago I was totally on your side, but while preparing for my 
A3 PR, I noticed two things:

1. The kernel also has (quite many) DTSI files with "/dts-v1/;". I'm not 
sure if this is intentional or also a mistake.
2. AFAIK documentation does not prohibit DTSI files with "/dts-v1/;". 
And DTSI files in OpenWrt follow v1 syntax (and not v0 nor non-existent 
v2), so I thought it would be better to clarify that. I'm not sure if 
it's okay if the version of DTS file is different from that of DTSI 
file, though.

That's why I included "/dts-v1/;" in mt7628an_iptime.dtsi. I don't have 
any objection to this patch, I just wanted to leave a comment on this issue.

Thanks.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
