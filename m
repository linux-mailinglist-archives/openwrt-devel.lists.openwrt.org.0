Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE57EAD65
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 11:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bFs8/m+sTUBlEGfBejMh3GcclcEPZGqyA3DrxSGk4IQ=; b=WPHJ1T5Ez+jzhDG1l2Ujt6Tvn
	+YS0grXvWnxr0PDLKvX/YuDolMEQbOzrItZdIvcfPtkArpIndgewK7YT+xptJtu9DiDERTT2KiGTx
	4e7BqmhWQkyeU7iMdorqfbcmXZSsHe32War27ewtwCgpWfKpJn3S2koKrZvyzvuzJLwMK8ND5TQTw
	rQ2sP+wFjLy5ARQ+2+8WV7GLUL98d/NGjEJgI/NNWnSv9wTg8G5qBC2tOISK37tNTrAlUy5Ngzysd
	jKeDHIs2wLqCxTqG34S16dVaL4gb11+1bJcCwV0bqt/rLVDtC/XVAWd0dmLX8nG0FzM9RxOMFkmnb
	bY2oyuNCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7fS-0003mM-7E; Thu, 31 Oct 2019 10:27:02 +0000
To: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>, nbd <nbd@nbd.name>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>
 <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>
 <2019103109465717351619@ikuai8.com>
 <d5ad2cb7-4542-f4a4-4024-bd6ffb93c1be@nbd.name>
 <2019103116195306162923@ikuai8.com>
 <2c32daa0-397d-60a2-ddd4-ce7337981031@nbd.name>
 <2019103117431505877930@ikuai8.com>
 <369364a9-bd86-fd13-6d80-173c807448c4@nbd.name>
 <2019103118005043716842@ikuai8.com>
Date: Thu, 31 Oct 2019 10:26:43 +0000
In-Reply-To: <2019103118005043716842@ikuai8.com>
MIME-Version: 1.0
Message-ID: <mailman.7392.1572517616.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: tapper via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: tapper <j.lancett@ntlworld.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
Content-Type: multipart/mixed; boundary="===============8179071733568541988=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8179071733568541988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8179071733568541988==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from know-smtprelay-omc-10.server.virginmedia.net ([80.0.253.74])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7fJ-0003lK-LV
	for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 10:26:55 +0000
Received: from [192.168.1.106] ([86.25.18.197])
	by cmsmtp with ESMTPA
	id Q7fBi5gn8KVO9Q7fBiwNgJ; Thu, 31 Oct 2019 10:26:46 +0000
X-Originating-IP: [86.25.18.197]
X-Authenticated-User: j.lancett@ntlworld.com
X-Spam: 0
X-Authority: v=2.3 cv=SNZsqtnH c=1 sm=1 tr=0 a=uqBmlGV94v24YsysmB5lzw==:117
 a=uqBmlGV94v24YsysmB5lzw==:17 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=Qze4UBMhAAAA:8 a=jdP34snFAAAA:8 a=W4xbIPvHY0D19mK0G5YA:9
 a=QEXdDO2ut3YA:10 a=30qrNVoKYyQsQ_rTTfpG:22 a=jlphF6vWLdwq7oh3TaWq:22
 a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
	s=meg.feb2017; t=1572517606;
	bh=zKZ7a7K4pa3gKT7xLJS86El42QNcsj0gAi2olo+TtAQ=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=E1XlxHB+pTnJdk0bUJK0cFRXF701Ld5ujWB6kTH6zIh98vZiWwqCM49omQ54y8ATD
	 iT2z2AETAxAW/x8+jAiLWAlvoweL7fst0x3BuQbz0gDacGbQfeMslmNsWmWJxKjdfX
	 clnVyULTyt31lvvgaZeR8mFmOyR/n6BGtomrsPT2F/E+t+NfsZqm13eVjRO8/K9tMn
	 /zAcUmtiROl19sH4pVIPUdBvx94r6Sa5s1HSNGf51/wVXq4uACIyWMYp0K1s8NTkCA
	 bcy1muARZR2ke5Muo70oIIgzjBIA7PtQFVoaAKf6sw5NyIW6EorweDtVu5SmYsZgXc
	 TJanZOAGk5Udw==
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
To: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>, nbd <nbd@nbd.name>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>
 <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>
 <2019103109465717351619@ikuai8.com>
 <d5ad2cb7-4542-f4a4-4024-bd6ffb93c1be@nbd.name>
 <2019103116195306162923@ikuai8.com>
 <2c32daa0-397d-60a2-ddd4-ce7337981031@nbd.name>
 <2019103117431505877930@ikuai8.com>
 <369364a9-bd86-fd13-6d80-173c807448c4@nbd.name>
 <2019103118005043716842@ikuai8.com>
From: tapper <j.lancett@ntlworld.com>
Message-ID: <29512222-f3e5-0e93-8757-8fab18edff39@ntlworld.com>
Date: Thu, 31 Oct 2019 10:26:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0a1
MIME-Version: 1.0
In-Reply-To: <2019103118005043716842@ikuai8.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfJLXEP/FauoDkEEfPM7HxncDAVcVKXPKuMlAchx9H1ghhe0Zrs0dyVSRvi+ctFK1zrhAhCPvsuR8OxRcpgljvpVfVYrhRzhutJOgGsC02J5mtdlH7cml
 FQP+/7kGmUH4S5AjTFfcSzDjucO5r/eOluaNV8HF5Q+TNGPbIGqvlLyHSqYdPRo9iUaboqHRBjTZU1oJvurmymT/10IaZ46JFMk1kJ8Hdfz8lnPw/3aXMsLu
 FNHG/mdTYENvOLi4JwnWO0bsdhy9hyXAurP3gM1q56s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_032653_990454_026A9328 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.0.253.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

On 31/10/2019 10:00, 大雄 wrote:
> Hi,
>      I think what  you said is right.
>      But, logic is not the same with  openwrt 15.05
> 
>     *From:* Felix Fietkau <mailto:nbd@nbd.name>
>     *Date:* 2019-10-31 17:50
>     *To:* 大雄 <mailto:lxliu@ikuai8.com>; Hauke Mehrtens
>     <mailto:hauke@hauke-m.de>; openwrt-devel
>     <mailto:openwrt-devel@lists.openwrt.org>
>     *Subject:* Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip
>     invalid
>     On 2019-10-31 10:43, 大雄 wrote:
>      > Hi,
>      >
>      >     But sometimes,  .ko not in menuconfig option.
>      >     It's in the kernel_menuconfig option.
>      >     So is no through ipk processing.
>     In that case the solution is to add a package for it.
>     - Felix
> 
openwrt 15.05 is very very very out of date!
What happens in openwrt 15.05 is not relevant!
We are getting ready to release OpenWrt 19.07
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 



--===============8179071733568541988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8179071733568541988==--
