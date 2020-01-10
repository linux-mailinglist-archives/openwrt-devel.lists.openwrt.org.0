Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C1E1377A6
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 21:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:In-Reply-To:References:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bexPiFSIsa2AE28M42q+oOEpS/FKV8zcCAAmAG+1s1E=; b=S0jVFdAQ+RFKtpvZ95moMxB6m
	Kdge4jiJs0NULkLadOk24QfcNi4lwoaXRhIb3me6bLJDKanEAuexIxDMY8UMJ7ryLPd46D/hbUkRK
	jWNJH1Hs6cu08K3/0gmHzDMeFgjd78q/dNu4pzkpX78lOlpvL7m5er5ByMCmx70nAEJ+ESvmgnj+I
	RcQkEPUAqIJ3jpTFg+7RbpREc1aV5mhuUhZnc3npUWojhEzJkpqI0pOebDsyhluh2/7fL+XQShC0a
	+TEb44EJHPh69W7HEAVBIMMFEqbSEQrO7UcfELcGMUYRzlA7Cva3pNxNDfk2TDzC5d5r/RE7qMkRF
	O/6SKDNIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq0XC-0000WF-W2; Fri, 10 Jan 2020 20:05:31 +0000
Date: Fri, 10 Jan 2020 15:05:07 -0500
References: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
In-Reply-To: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
MIME-Version: 1.0
Message-ID: <mailman.23756.1578686720.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Raylynn Knight via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Raylynn Knight <rayknight@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
Content-Type: multipart/mixed; boundary="===============3908671567711459702=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3908671567711459702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3908671567711459702==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from st43p00im-ztbu10063701.me.com ([17.58.63.178])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq0X0-0000UU-43
	for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 20:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1578686709; bh=On1d6IU8sZ25YNjWrJJHhfgCQrB4xSK6abfUN2ysOcc=;
	h=Content-Type:From:Subject:Date:Message-Id:To;
	b=pegC1hnM8zMU6qXx+YHJqksSZXGKE+73ojpqbf0dse+ugxTtB/ubLUbdeWW2TlJcx
	 l0tzufwo2mxli5T1ng6m+SraT8I/rP8tIWDx9g6lXO6up2bGkNcRslZvo7eGbwYeRr
	 2S3RxR7UoSdiCy2BWSQdSnXiRQf/4QgAe/Ak8TMV5CWIomGkglJVFRl+XGfBHiQ/FD
	 VSFMwAY3W4E0oN6eDSr21WJUfvZzIsmIJrleZFUnZSjtc4jWoa6P829UsjjRpgDI+5
	 M4UachbsJMcj4un92mmbUnGa8zHANwkN5wnmA5h5c/11uerOYgLBiQriGJKCAaPx6m
	 1xISeCPGYKYWA==
Received: from [10.44.200.4] (unknown [166.137.97.180])
	by st43p00im-ztbu10063701.me.com (Postfix) with ESMTPSA id 26DC79A0CC8;
	Fri, 10 Jan 2020 20:05:09 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Raylynn Knight <rayknight@me.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
Date: Fri, 10 Jan 2020 15:05:07 -0500
Message-Id: <39FD35D7-B4C8-4F79-9F30-09EC4C0A8158@me.com>
References: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
In-Reply-To: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
X-Mailer: iPhone Mail (17C54)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-10_01:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001100164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_120518_236333_A707A441 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.63.178 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (rayknight[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Ideally orion and kirkwood should be merged as the same kernel can support b=
oth.

Ray Knight


> On Jan 5, 2020, at 8:43 AM, mail@adrianschmutzler.de wrote:
>=20
> =EF=BB=BF
>>=20
>>>>>> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
>>>>>>> Hi Hauke,
>>>>>>>=20
>>>>>>>> The following are still on kernel 4.9:
>>>>>>>> * ar7
>>>>>>>> * ixp4xx
>>>>>>>> * orion
>>>>>>>=20
>>>>>>> There are patches (actually from you, May 2019) on the list which
>>>>>>> claim to bump ar7 and orion to 4.14:
>>>>>>>=20
>>>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
>>>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
>>>>>>>=20
>>>>>>> I haven't looked closer, just in case you forgot about them ;-)
>>>>>>=20
>>>>>> Nobody reported that they are working so I never applied them. I do
>>>>>> not have the hardware, I just made them compile.
>>>>>=20
>>>>> Since there was no response of any kind from a third party, I've
>>>>> just
>>> marked the two patchsets as "Deferred" in the patchwork, so we get a
>>> little more overview there. I hope that's okay for you.
>>>=20
>>> Yes fine with me, we should probably drop these targets soon.
>>>=20
>>> Hauke
>>=20
>> I think it's time to remove the three targets and kernel 4.9 support as w=
ell
>> after the release has been made. Or does keeping kernel 4.9 in master (ev=
en
>> without targets) make it easier to support 18.06 branch?
>>=20
>=20
> I've prepared a staging branch for that (completely untested at the moment=
):
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dr=
efs/heads/remove49
>=20
> For orion, I have some grep matches in uboot-kirkwood and kernel/linux/mod=
ules/usb.mk I'm not sure about, so I haven't touched those yet.
>=20
> Best
>=20
> Adrian
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



--===============3908671567711459702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3908671567711459702==--
