Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D47C12E9F4
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 19:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:In-Reply-To:References:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QrWDPY3QaSkimlDfcAz2jSlPCALeLxFwFbFYLtj5M1s=; b=HO/nfxfBsYdQIsOaF3TVgBGcc
	E8NZqR+zC98JzlPxE44H6wPGxDo9eAAwM5LKm46RMydhAoopjjrK8TP2sMRFJ9/NEoAoifsr3AGzv
	75CzO9dmpXynJGfywYfW2Qt891tv0M55hIjoRtYZs69ph+3daBXjc/2dq1gm/pXKjIAfEumaXiK9c
	NA9BSxvwUY3TOwiK0VrUQjCWWgUG1GeUQZ+boMqx5xvLkabRLIigMBIr68Wm4SMdZ1glN0yXhRA0N
	EA+i+nKb+7FrsccGXMYEWEX4fnUZq3tyKpvBpOjPTXV6bI0Z2xVb+nbu/CnsgnPjhZPytJ1JgMrVH
	bs9n/JIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in5DH-0008VY-Kc; Thu, 02 Jan 2020 18:28:51 +0000
Date: Thu, 2 Jan 2020 19:28:37 +0100
References: <20200102182643.GU70184@meh.true.cz>
In-Reply-To: <20200102182643.GU70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.21782.1577989723.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hannu Nyman <hannu.nyman@iki.fi>, openwrt-devel@lists.openwrt.org,
 Stijn Segers <foss@volatilesystems.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
Content-Type: multipart/mixed; boundary="===============5096004295753350309=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5096004295753350309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5096004295753350309==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021801.me.com ([17.58.23.195])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in5D7-0008V9-A9
	for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 18:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577989720; bh=HfP0rwgczFpKtoQMjN0ZJWE/nAfNBmIoceqcBuyy41U=;
	h=Content-Type:From:Subject:Date:Message-Id:To;
	b=CaeYxSnFTpw7m32LspejolGoTmFgI/kIqOt6OgjT7zWIUc12KgS0JgcaNduVXrweH
	 fKjrYAMtds+6MZ6hUfBXuIFb725nRecPzDmkAOYnQs1NfSYPs34TfYdf0OmmlydMOx
	 qOIjSL79ig7ug7pCULj9lCAqDrSGkdLpx/77NTqmKzWiso+zPaFTjIEi64TjP3gkF4
	 dS6oDoED/+ySAZlmuHDeh4Ty3LZJw+eBMVPjl3k3tpQKu0IOQcqI62nBOnfE34ywel
	 bS0xMmKH44a/4nQ8IZuXG9rpJZNw2W6ZkhpvgU39HVPPwSilcg8Zjdc33hI5QRZNq5
	 2NV0a7oeuiVCA==
Received: from [192.168.255.118] (78-80-17-93.nat.epc.tmcz.cz [78.80.17.93])
	by mr85p00im-ztdg06021801.me.com (Postfix) with ESMTPSA id 009E7180B72;
	Thu,  2 Jan 2020 18:28:39 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent development snapshots: "message": "Firmware image couldn't be validated"
Date: Thu, 2 Jan 2020 19:28:37 +0100
Message-Id: <DA62CCF1-D0A4-4B1D-8E47-66532F928CF4@me.com>
References: <20200102182643.GU70184@meh.true.cz>
Cc: Stijn Segers <foss@volatilesystems.org>,
 openwrt-devel@lists.openwrt.org, Hannu Nyman <hannu.nyman@iki.fi>
In-Reply-To: <20200102182643.GU70184@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17C54)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-01-02_06:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2001020153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_102841_361282_2407B2D4 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Ok. Thanks for the answers.  I was hoping there may be a pattern but this do=
es not seem to be relevant.=20

> On 2 Jan 2020, at 19:27, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> =EF=BB=BFPetr Nov=C3=A1k <petrn@me.com> [2020-01-02 18:40:18]:
>=20
>> Was the Qemu test Petr S. has done been running a multi-core or single co=
re emulation?
>=20
> I use 4 cores, 512M RAM as default for the QEMU machines.  I'm also testin=
g on
> ipq4018, mt7621 and i.MX6 which are multicore.
>=20
> -- ynezz



--===============5096004295753350309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5096004295753350309==--
