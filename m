Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB171DC8F6
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 10:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3ObQnj7zLeTA7hMuLvmL/lis54NuLtn0NJYi3GQTM+c=; b=L7p
	+GSSWqQJDUOCrw9T7dTVzMCjX6KWI9gijyelORdNZ69LeMD7QUJE9ObdtUzCE4a/2c0Gj09Y/JtbX
	RYjDtCizC21hdKBpyXuViO4IYoqK4r1o5d2Qxuw1GNWVkx7Anr1xIYPyPx4i/qPNrzrRFu/wsN6Sl
	vjTDjsJhjY+l7HqdIiOk+wiFk5Bdry1kDQ61+ni/un1zfCfkhpv6GTO8FGjOtO1a2+sYH953tjuV+
	opQ/Fy1u3xV1gsxVZ3hxZjxZbL4xxO0VflXJDNFLUTcPy2DU+tsbkVFU7pZb6akdkgiGce3sOS4/+
	wreffX10ibT4xzhO2HL0zkVwAgfPQbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgqF-0005kf-Qf; Thu, 21 May 2020 08:46:15 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgq7-0005kN-Jo
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 08:46:08 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a2so7814183ejb.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 21 May 2020 01:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=DdtprfmUBT1irMHc+tuihOW2e4wg0NJJ2EmMl2IIgBM=;
 b=fSL/O6rgKem3nLVK6gn6hm5NY/hb2Ik3yPmAbFTLRC6fz+ngygwAq9QfS7Un1PTUQX
 pKEqrH6yuMtLXEQPTdq5oGpV1dnjusArKeIF5U8l14nge6lcBCc/x5XPfraNzH+ktWkT
 z50c+pK4RabmfwBgqmRf23UlDK9r9R542+BKPRlPiI1T1ShmoHPITcq2Sd51UZo8uKsc
 qMg7hp6M9wwQZMngnHWI8fI7pR3ZeAxdz3mdU4zIczXMmmfQDx22zA2VAxVYO6SuqSRC
 kRWhbxb10uCdyKyGLP9ge3VCoJ9t1Mo6BtiQT5yQImPwpOBBJqrFXBIuSvvVSZMN/dlK
 brJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DdtprfmUBT1irMHc+tuihOW2e4wg0NJJ2EmMl2IIgBM=;
 b=XdBMuFtNEULOQUPtmNM6LH9QpLYal4yX+491QYY5V+2dX5j9fFby2/iFMa2qUx4NPG
 gtVetdVmDLaqQloXmgSLyN6KWXhbnQD5/uUlXHeuS3rvS/b+NSLFV1ESVxUYfTj77RWg
 NbsO+9n6ReBIKsiDBCZWup2rJixypbzrVqbTKDW0LsrhFn3GkwzV7kr0BzFnCxY6HjHI
 v4PBoZ4leDMUDZ9FLzZlgyuh+sdbclccbpERWAl5aEjrZ/kF9D5MEQ0saGXeWWzAgGgz
 VvXSR8AEPz1tYiGiv9l1vvqdEPrOo/dKuaY4WROJ2H5F5QeZR6ZLfYHifehiG1mNvBRA
 UGfQ==
X-Gm-Message-State: AOAM531TZfw2McW48bU5ysQMhU2SFDVUTdTOieqTUCZx02ld9pDm7b+X
 RZYcmnAiJjs0HBnZ1kQtYZa8b/OR3UTcwCt/rGBDKQ==
X-Google-Smtp-Source: ABdhPJyITzlfsHDY3eB5msJN/YUvfcDeEr2ZZir4Pd8vUDLLjEubNNHr6JizeQvdbMTCNBuMMRzpEyi3dJOxkiF2EuQ=
X-Received: by 2002:a17:906:1c94:: with SMTP id
 g20mr2431689ejh.319.1590050765660; 
 Thu, 21 May 2020 01:46:05 -0700 (PDT)
MIME-Version: 1.0
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Thu, 21 May 2020 17:45:54 +0900
Message-ID: <CALYKT1imEyMPRn_LpkkdPCxDjA-YT5k1Mohuk2bRcGj5Gt_bbw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_014607_649625_917DCEA8 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Where can I find the kernel menuconfig from openwrt
 target board?
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
Content-Type: multipart/mixed; boundary="===============4249424815528358503=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4249424815528358503==
Content-Type: multipart/alternative; boundary="0000000000000feaeb05a6248b13"

--0000000000000feaeb05a6248b13
Content-Type: text/plain; charset="UTF-8"

Hello list,

I've seen that one can find kernel menuconfig from the target board. And I
remember I saw in my eye from my board.
But I forgot where was it.

If you know please remind me. Let me know.

Thank you very much in advance!
Jeonghum

--0000000000000feaeb05a6248b13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello list,<div><br></div><div>I&#39;ve seen that one can =
find kernel menuconfig from the target board. And I remember I saw in my ey=
e from my board.</div><div>But I forgot where was it.</div><div><br></div><=
div>If you know please remind me. Let me know.</div><div><br></div><div>Tha=
nk you very much in advance!</div><div>Jeonghum</div></div>

--0000000000000feaeb05a6248b13--


--===============4249424815528358503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4249424815528358503==--

