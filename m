Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E09218C26A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 22:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lh9VoApfis8N7JwlUAKe4xlDuH2zrgR+XbF8ozTXW4A=; b=P8S27VEKwP8p3BbQ54ir726N4
	qK2Jtit4nDxDpKVuX6S2X8r378I9w4s46RvNdM0tNdg/YJ5N+rgC5oX3qLUE8VAlatv39eKUo31S6
	+P8Rjm/yEvILCz/UPSaBybgxxYI7S14GXy61kraGN+pdqMQU3aDXA9R2dKgSZHgirqaKh9Qt1OSyp
	etbKPt+q14tn8HSpxPsR6JD7LMppOU4qYiPYvWu+nLPczNDHN7IFj89Fpx2mm8kEZ0bP4XfJIhc/I
	jI15bM33SCrjl7USqEefRKKAnFgBvw7XeoxCOeiJfni7zE/UPx/9/0rS/8b2fQV/RKMdtsa7ToWSm
	kggdPaesA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2vA-0002S8-OD; Thu, 19 Mar 2020 21:41:44 +0000
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20191010213553.90237-1-spiccinini@altermundi.net>
 <20200211134442.GB26894@meh.true.cz>
Date: Thu, 19 Mar 2020 18:23:53 -0300
In-Reply-To: <20200211134442.GB26894@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.40094.1584654101.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: SAn via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: nbd@openwrt.org, openwrt-devel@lists.openwrt.org, jo@mein.io
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: SAn <spiccinini@altermundi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] proc: cancel script killing only if
 process ends
Content-Type: multipart/mixed; boundary="===============9183505554829835312=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9183505554829835312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9183505554829835312==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from ixchel.codigosur.com ([109.69.10.37] helo=mail.codigosur.org)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2v4-0002Rf-7j
	for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 21:41:39 +0000
Received: from authenticated-user (mail.codigosur.org [109.69.10.37])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.codigosur.org (Postfix) with ESMTPSA id 630C7EC012F;
	Thu, 19 Mar 2020 22:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=altermundi.net;
	s=mail; t=1584652969;
	bh=8SkIbUkiRV4SD9TE5gwjbS4lT0Ce7dbwkrpihYZLDXw=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=U4YkOiThuH1z5weQKHRErH31eaq548eiTn4q7TowrByP3UzXPH70snfuwwuNp7ZY0
	 6EA8/bwmZnOaZNeJXgqja9EDmyNfeomNsE6dBHMG7wANU3ptMyN4ii9kog3xnnazTj
	 WmuEVMD0RXlz4ys0LnkmxoFjWU+hCr1B+rMugh1uLunLm/nWtt0pHym/6OmDxxpv6H
	 njrG951xAsjru1WXAz9qXFYgbHCd3oGQBQiYx/crW9gx8DGvPyquMNF9bEjRT84eba
	 izANN/FoTc1q3Pm9ot+E9biOQO/nhqPjoym0p83ly3A3f/A2lZUD1b2SyL97iqsSp2
	 yOxYLPdAWWQ+Q==
Subject: Re: [PATCH] proc: cancel script killing only if process ends
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, nbd@openwrt.org, jo@mein.io
References: <20191010213553.90237-1-spiccinini@altermundi.net>
 <20200211134442.GB26894@meh.true.cz>
From: SAn <spiccinini@altermundi.net>
Autocrypt: addr=spiccinini@altermundi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5df7dbb3-e43d-c08d-5c1a-8984ed04db89@altermundi.net>
Date: Thu, 19 Mar 2020 18:23:53 -0300
MIME-Version: 1.0
In-Reply-To: <20200211134442.GB26894@meh.true.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_144138_572981_E9CFEDBB 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hi ynezz thanks for bringing this conversation to the list!

On 2/11/20 10:44 AM, Petr Štetiar wrote:
> Santiago Piccinini <spiccinini@altermundi.net> [2019-10-10 18:35:53]:
> 
> Hi,
> 
>> Before this change if the cgi script hangs after writing headers
>> then the process will never be killed. Let's only cancel the timeout
>> if the process ends.
> 
>  < jow> well it is a change in behaviour
>  < jow> the proper solution would be introducing a separate read timeout I guess. Thats how other servers handle it
>  < jow> one timeout until the first content, then another body read timeout

The rationale behind adding another timeout is to maintain behavior
(using an infinite default timeout for the new timeout) ?

In my opinion another timeout adds more complexity than value if
backwards compatibility is not taken in consideration.

Anyhow, I can implement separate timeouts but if the patch will be
accepted. Maybe something like script_timeout_abort or
script_abort_timeout for the name?

Best!
SAn


--===============9183505554829835312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9183505554829835312==--
