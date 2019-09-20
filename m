Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165AB98CB
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 23:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p9PCEr+4cnh2qhipvHEpMySYg+tcvf0A7NSU6JpR7ZQ=; b=ciVdRN19gytPdSPxYIaL31BR7
	THzPDmK8ZaZmWxSFRti4mOyRjmliNxAG+26j1gvsIWNC67H07a8Uo64V+kJBDrvxkouGJirW0PgGo
	e5/O7lpPjEAGSPFxEBnZapojDk6Xd6GRHK82TN+VypUhfLZJBRKrHb/bxJvNN+Io3RIxSZFLnU/8B
	qU5PlDCuPrN/cKky+ppfyXLtI/+f5hTSG02Vw4wMeW265iuLrjFLfSSJMOjSNCBfzo5BnkI/nHk7k
	fJUBJ6CskXDwUZqxI5Je3msKI4NvU9/efSG5lLCxTa18az6AkJAxMIRE8uYut3ZrBhA84TuLKrLfx
	tv21qhWFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBQBb-0007NG-EG; Fri, 20 Sep 2019 21:11:27 +0000
Received: from n1nlsmtp01.shr.prod.ams1.secureserver.net ([188.121.43.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBQBT-0007MG-RP
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 21:11:22 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id BQARiPENUOUUvBQARiqh3c; Fri, 20 Sep 2019 14:10:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:
 Message-ID:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BuI5oGedPkxUVVObFdxZ74r6A6QxQ8DkVMaNdkjs1Bg=; b=lXnjyn4Dj0aQ3jUM/9JD1lcILa
 pi7kmfxiPO6zZ7bvrde3BPTa6RZzJozXHc9LJsm7wq0mgJDx+BKVPf3r0PRmFvpnY0j1ea8PuL6GM
 jUrC/6U43YnI/AfvKu9GL4C4czFgu+JAOwimmeggMzlqFxL1NrrP3l8oQr+wRjn8g88Ncf5janKFb
 pMVOsfoW7AcaYKsM0J9wAU6L7t1o+w1YFDdZbSQEXyENn+B5uLv5+GuU91jVGiRPxBrMIbHJui3W8
 Qba0nnHaMHNAB69THn590WKhWtvtHUVQlVnOlWBrhe3yMcyw3+1Vg2sgfDbkfGcZMnPLKQjIdyqXX
 qWMvXqtA==;
Received: from [52.125.138.56] (port=36306 helo=mail.outlook.com)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92)
 (envelope-from <support@maxnet.al>)
 id 1iBQAR-00HNqu-9b; Fri, 20 Sep 2019 14:10:15 -0700
Date: Fri, 20 Sep 2019 21:10:09 +0000 (UTC)
From: support@maxnet.al
To: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org, Ben Greear <greearb@candelatech.com>
Message-ID: <E35DD50A54031C50.1647581b-56ab-4a5d-b037-c6bc1d025064@mail.outlook.com>
In-Reply-To: <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
MIME-Version: 1.0
X-Mailer: Outlook for iOS and Android
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0065.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - maxnet.al
X-Get-Message-Sender-Via: n3plcpnl0065.prod.ams3.secureserver.net: authenticated_id:
 support@maxnet.al
X-Authenticated-Sender: n3plcpnl0065.prod.ams3.secureserver.net: support@maxnet.al
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfG0BFH6GAgb6t+wqkULvHdcs/9p23BABtVmfW85BM07kmvsaWeHoDYa/98Mts6CyLFKvDoERwwpFD3o7LUYVf9BgbhGL0sgDzMPbkcT2xdJ89j3TJx5W
 A0DeJpamvrgZpG0G1rzPLaRugWvkwQTq20PhYWRusZ8xNGGkQlwXw+slPL5RdiEGSgGhslSkfYjhHwLxNI/dYtRDc8sCn+7jWkju0XYW3QiXeaJRbq6dd4qj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_141120_047668_4EAED6F0 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link
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
Content-Type: multipart/mixed; boundary="===============8236094780033768128=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8236094780033768128==
Content-Type: multipart/alternative; 
	boundary="----=_Part_7552_1585016527.1569013809738"

------=_Part_7552_1585016527.1569013809738
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Ben,




When do you think you can port those changes to your firmware?




Thank you for your support.


Klevis.




On Fri, Sep 20, 2019 at 10:01 PM +0200, "Ben Greear" <greearb@candelatech.com> wrote:










On 9/20/19 12:55 PM, Vincent Wiemann wrote:
> Hi Klevis,
> 
> have you tried it with a short distance?
> If you did you should better ask Ben Greear directly.

I asked him to post publicly so that others can help answer and that my own answers might
help someone else.

I have some patches that should enable coverage class settings for wave-2, but I am too busy
with other things right now to port them to my ath10k-ct driver/firmware.

Thanks,
Ben

> 
> By the way ath10k gen 2 chipsets don't work very well with long distance links without a
> special feature which implementation is only available to companies like Ubiquiti and very few
> people who have an own reverse-engineered implementation.
> It works on IPQ401X, QCA9886 and QCA9888 based chips only.
> 
> And it is not possible to set a coverage class for gen 2 devices, yet as far as I know due to missing
> documentation and implementation (correct me if that information is outdated).
> Furthermore a high channel width often results in problems
> due to lower receiver sensibility.
> We have better experiences with lower channel widths and sometimes get more throughput with that.
> 
> Actually I think this does not explain your connection issues as 13 km is not that much.
> 
> Regards,
> 
> Vincent Wiemann
> 
> On 20.09.19 18:30, support@maxnet.al wrote:
>> Hello everyone,
>>
>> I am trying to setup a custom made outdoor link with Apu2d2 board devices and QCA9994 cards from compex. After i installed openwrt and ath10k ct driver, kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS AP. The problem is that it won't run as station or station wds. It can scan
>> the SSIDs but won't connect them.
>>
>> Any suggestion?
>>
>> Thank you!
>> Klevis
>>
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


-- 
Ben Greear 
Candela Technologies Inc  http://www.candelatech.com







------=_Part_7552_1585016527.1569013809738
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Hi Ben,<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">When do you think you can port those changes to your firmware?<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Thank you for your support.<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Klevis.</div>
<br><br><br>
<div class="gmail_quote">On Fri, Sep 20, 2019 at 10:01 PM +0200, "Ben Greear" <span dir="ltr">&lt;<a href="mailto:greearb@candelatech.com" target="_blank">greearb@candelatech.com</a>&gt;</span> wrote:<br>
<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir="3D&quot;ltr&quot;">
<pre>On 9/20/19 12:55 PM, Vincent Wiemann wrote:
&gt; Hi Klevis,
&gt; 
&gt; have you tried it with a short distance?
&gt; If you did you should better ask Ben Greear directly.

I asked him to post publicly so that others can help answer and that my own answers might
help someone else.

I have some patches that should enable coverage class settings for wave-2, but I am too busy
with other things right now to port them to my ath10k-ct driver/firmware.

Thanks,
Ben

&gt; 
&gt; By the way ath10k gen 2 chipsets don't work very well with long distance links without a
&gt; special feature which implementation is only available to companies like Ubiquiti and very few
&gt; people who have an own reverse-engineered implementation.
&gt; It works on IPQ401X, QCA9886 and QCA9888 based chips only.
&gt; 
&gt; And it is not possible to set a coverage class for gen 2 devices, yet as far as I know due to missing
&gt; documentation and implementation (correct me if that information is outdated).
&gt; Furthermore a high channel width often results in problems
&gt; due to lower receiver sensibility.
&gt; We have better experiences with lower channel widths and sometimes get more throughput with that.
&gt; 
&gt; Actually I think this does not explain your connection issues as 13 km is not that much.
&gt; 
&gt; Regards,
&gt; 
&gt; Vincent Wiemann
&gt; 
&gt; On 20.09.19 18:30, support@maxnet.al wrote:
&gt;&gt; Hello everyone,
&gt;&gt;
&gt;&gt; I am trying to setup a custom made outdoor link with Apu2d2 board devices and QCA9994 cards from compex. After i installed openwrt and ath10k ct driver, kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS AP. The problem is that it won't run as station or station wds. It can scan
&gt;&gt; the SSIDs but won't connect them.
&gt;&gt;
&gt;&gt; Any suggestion?
&gt;&gt;
&gt;&gt; Thank you!
&gt;&gt; Klevis
&gt;&gt;
&gt; 
&gt; _______________________________________________
&gt; openwrt-devel mailing list
&gt; openwrt-devel@lists.openwrt.org
&gt; https://lists.openwrt.org/mailman/listinfo/openwrt-devel
&gt; 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

</greearb@candelatech.com></pre>
</div>

</blockquote>
</div>
</body></html>
------=_Part_7552_1585016527.1569013809738--


--===============8236094780033768128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8236094780033768128==--

